using Dominio;
using Dominio.dto;
using Dominio.Excecoes;
using Negocio.Interface;
using Negocio.Validacoes;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    public class MembroSquadNegocio : IMembroSquadNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly IMembroSquadRepositorio _membroSquadRepositorio;
        private readonly ISquadRepositorio _squadRepositorio;
        private readonly IUserRepositorio _userRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public MembroSquadNegocio(IMembroSquadRepositorio membroSquadRepositorio, ISquadRepositorio squadRepositorio, IUserRepositorio userRepositorio)
        {
            _membroSquadRepositorio = membroSquadRepositorio;
            _squadRepositorio = squadRepositorio;
            _userRepositorio = userRepositorio;
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
        /// Seleciona um membro do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um membro no Database.</param>
        /// <returns>Seleciona um membro ou gera uma exceção.</returns>
        public IEnumerable<MembroSquadDto> SelecionarPorIdSquad(int id)
        {
            var obj = _membroSquadRepositorio.SelecionarPorIdSquad(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhuma squad com este ID: { id }");

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
            ValidacoesMembroSquad(entity);

            //Verifica se o usuário já esta vinculado a uma Squad
            if (_membroSquadRepositorio.SelecionarPorIdUser(entity.IdUser) != null)
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
            ValidacoesMembroSquad(entity);

            //Verifica se o Id do membro é válido.
            if (_membroSquadRepositorio.SelecionarPorId(id) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {id}");
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

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        public void ValidacoesMembroSquad(MembroSquad entity)
        {
            //Verifica se existem campos vazios.
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            //Verifica se o Id da Squad é válido.
            if (_squadRepositorio.SelecionarPorId(entity.IdSquad) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma Squad " +
                                                 $"com o ID: {entity.IdSquad}");
            }

            //Verifica se o Id do Usuário é válido.
            if (_userRepositorio.SelecionarPorId(entity.IdSquad) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {entity.IdUser}");
            }
        }
    }
}