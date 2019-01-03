using Dominio;
using Dominio.dto;
using Dominio.Excecoes;
using Negocio.Interface;
using Negocio.Validacoes;
using Repositorio;
using System.Collections.Generic;

namespace Negocio
{
    public class MembroTriboNegocio : IMembroTriboNegocio
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
        /// Seleciona todas as vinculações entre Membro e Tribo do Database.
        /// </summary>
        /// <returns>Lista de vinculações entre membros e tribo.</returns>
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
        /// Seleciona um membro do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um membro no Database.</param>
        /// <returns>Seleciona um membro ou gera uma exceção.</returns>
        public IEnumerable<MembroTriboDto> SelecionarPorIdTribo(int id)
        {
            var obj = _membroTriboRepositorio.SelecionarPorIdTribo(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhuma tribo com este ID: { id }");

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos.
        /// Antes de inserir uma vinculação entre Membro e Tribo.
        /// </summary>
        /// <param name="entity">Objeto com os dados do membro.</param>
        /// <returns>ID do membro inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(MembroTribo entity)
        {
            ValidacoesMembroTribo(entity);

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
            ValidacoesMembroTribo(entity);

            //Verifica se o Id do membro é válido.
            if (_membroTriboRepositorio.SelecionarPorId(id) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {id}");
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

        public void ValidacoesMembroTribo(MembroTribo entity)
        {
            //Verifica se existem campos vazios.
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            //Verifica se o Id da Tribo é válido.
            var _triboRepositorio = new TriboRepositorio();
            if (_triboRepositorio.SelecionarPorId(entity.IdTribo) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma Tribo " +
                                                 $"com o ID: {entity.IdTribo}");
            }

            //Verifica se o Id do Usuário é válido.
            var _userRepositorio = new UserRepositorio();
            if (_userRepositorio.SelecionarPorId(entity.IdTribo) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário " +
                                                 $"com o ID: {entity.IdUser}");
            }
        }
    }
}
