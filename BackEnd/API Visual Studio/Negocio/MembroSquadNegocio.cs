using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Negocio.Validacoes;
using Repositorio;
using System.Collections.Generic;

namespace Negocio
{
    public class MembroSquadNegocio : INegocioBase<MembroSquad>
    {
        /// <summary>
        /// Declara o repositório do membro.
        /// </summary>
        private readonly MembroSquadRepositorio _membroSquadRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public MembroSquadNegocio()
        {
            _membroSquadRepositorio = new MembroSquadRepositorio();
        }

        /// <summary>
        /// Seleciona todas as vinculações entre Membros e Squads do Database.
        /// </summary>
        /// <returns>Lista de vinculações entre membros e squads.</returns>
        public IEnumerable<MembroSquad> Selecionar()
        {
            return _membroSquadRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um membro do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um membro no Database.</param>
        /// <returns>Seleciona um membro ou gera uma exceção.</returns>
        public MembroSquad SelecionarPorId(int id)
        {
            var obj = _membroSquadRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum membro com este ID: { id }");

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos.
        /// Antes de inserir uma vinculação entre Membro e Squad.
        /// </summary>
        /// <param name="entity">Objeto com os dados do membro.</param>
        /// <returns>ID do membro inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(MembroSquad entity)
        {
            //Verifica se existem campos vazios.
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            //Verifica se o Id da Squad é válido.
            var _squadRepositorio = new SquadRepositorio();
            if (_squadRepositorio.SelecionarPorId(entity.IdSquad) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma Squad " +
                                                 $"com o ID: {entity.IdSquad}");
            }

            //Verifica se o Id do Usuário é válido.
            var _userRepositorio = new UserRepositorio();
            if (_userRepositorio.SelecionarPorId(entity.IdSquad) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {entity.IdUser}");
            }

            //Verifica se o usuário já esta vinculado a uma Squad
            if(_membroSquadRepositorio.SelecionarPorIdUser(entity.IdUser) != null)
            {
                throw new ConflitoException($"O usuário com ID: {entity.IdUser}, " +
                                            $"já está vinculado a uma Squad");
            }

            return _membroSquadRepositorio.Inserir(entity);
        }

        /// <summary>
        ///  Verifica se existem campos obrigatórios que não estão preenchidos.
        ///  Antes de alterar os dados de uma vinculação entre Membro e Squad.
        /// </summary>
        /// <param name="entity">Objeto com os dados do Membro.</param>
        /// <returns>ID do membro inserido no Database ou gera alguma exceção.</returns>
        public MembroSquad Alterar(int id, MembroSquad entity)
        {
            //Verifica se existem campos vazios.
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            //Verifica se o Id da Squad é válido.
            var _squadRepositorio = new SquadRepositorio();
            if (_squadRepositorio.SelecionarPorId(entity.IdSquad) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma Squad " +
                                                 $"com o ID: {entity.IdSquad}");
            }

            //Verifica se o Id do Usuário é válido.
            var _userRepositorio = new UserRepositorio();
            if (_userRepositorio.SelecionarPorId(entity.IdSquad) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {entity.IdUser}");
            }

            entity.Id = id;
            _membroSquadRepositorio.Alterar(entity);

            return _membroSquadRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// Verifica se o membro existe no Database antes de deleta-lo.
        /// </summary>
        /// <param name="id">Usado para buscar o membro no Database.</param>
        public void Deletar(int id)
        {
            var obj = SelecionarPorId(id);

            if (obj == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum membro com este ID: { id }");
            }
            _membroSquadRepositorio.Deletar(obj.Id);
        }
    }
}