using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Negocio.Validacoes;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class MembroTriboNegocio : INegocioBase<MembroTribo>
    {
        /// <summary>
        /// Declara o repositório do membro.
        /// </summary>
        private readonly MembroTriboRepositorio _membroTriboRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public MembroTriboNegocio()
        {
            _membroTriboRepositorio = new MembroTriboRepositorio();
        }

        /// <summary>
        /// Seleciona todas as vinculações entre Membros e Squads do Database.
        /// </summary>
        /// <returns>Lista de vinculações entre membros e squads.</returns>
        public IEnumerable<MembroTribo> Selecionar()
        {
            return _membroTriboRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um membro do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um membro no Database.</param>
        /// <returns>Seleciona um membro ou gera uma exceção.</returns>
        public MembroTribo SelecionarPorId(int id)
        {
            var obj = _membroTriboRepositorio.SelecionarPorId(id);

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
        public int Inserir(MembroTribo entity)
        {
            //Verifica se existem campos vazios.
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            //Verifica se o Id da Squad é válido.
            var _squadRepositorio = new SquadRepositorio();
            if (_squadRepositorio.SelecionarPorId(entity.IdTribo) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma Squad " +
                                                 $"com o ID: {entity.IdTribo}");
            }

            //Verifica se o Id do Usuário é válido.
            var _userRepositorio = new UserRepositorio();
            if (_userRepositorio.SelecionarPorId(entity.IdTribo) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {entity.IdUser}");
            }

            //Verifica se o usuário já esta vinculado a uma Squad
            if (_membroTriboRepositorio.SelecionarPorIdUser(entity.IdUser) != null)
            {
                throw new ConflitoException($"O usuário com ID: {entity.IdUser}, " +
                                            $"já está vinculado a uma Squad");
            }

            return _membroTriboRepositorio.Inserir(entity);
        }

        /// <summary>
        ///  Verifica se existem campos obrigatórios que não estão preenchidos.
        ///  Antes de alterar os dados de uma vinculação entre Membro e Squad.
        /// </summary>
        /// <param name="entity">Objeto com os dados do Membro.</param>
        /// <returns>ID do membro inserido no Database ou gera alguma exceção.</returns>
        public MembroTribo Alterar(int id, MembroTribo entity)
        {
            //Verifica se existem campos vazios.
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            //Verifica se o Id da Squad é válido.
            var _squadRepositorio = new SquadRepositorio();
            if (_squadRepositorio.SelecionarPorId(entity.IdTribo) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma Squad " +
                                                 $"com o ID: {entity.IdTribo}");
            }

            //Verifica se o Id do Usuário é válido.
            var _userRepositorio = new UserRepositorio();
            if (_userRepositorio.SelecionarPorId(entity.IdTribo) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {entity.IdUser}");
            }

            entity.Id = id;
            _membroTriboRepositorio.Alterar(entity);

            return _membroTriboRepositorio.SelecionarPorId(id);
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
            _membroTriboRepositorio.Deletar(obj.Id);
        }
    }
}
