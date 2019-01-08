using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Negocio.Validacoes;
using Repositorio.Interface;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Negocio
{
    public class UserNegocio : IUserNegocio
    {
        /// <summary>
        /// Declara o repositório do usuário.
        /// </summary>
        private readonly IUserRepositorio _userRepositorio;
        private readonly IPapelRepositorio _papelRepositorio;

        /// <summary>
        /// Construtor que instancia os repositórios
        /// </summary>
        public UserNegocio(IUserRepositorio userRepositorio, IPapelRepositorio papelRepositorio)
        {
            _userRepositorio = userRepositorio;
            _papelRepositorio = papelRepositorio;
        }

        /// <summary>
        /// Seleciona todos os usuários do Database.
        /// </summary>
        /// <returns>Lista de usuários.</returns>
        public IEnumerable<User> Selecionar()
        {
            return _userRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona todos usuários ativos.
        /// </summary>
        /// <returns>Lista de usuários ativos.</returns>
        public IEnumerable<User> SelecionarAtivos()
        {
            return _userRepositorio.SelecionarAtivos();
        }

        /// <summary>
        /// Seleciona um usuário do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um usuário no Database.</param>
        /// <returns>Seleciona uma usuário ou gera uma exceção.</returns>
        public User SelecionarPorId(int id)
        {
            var obj = _userRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário com este ID: {id}");

            return obj;
        }

        /// <summary>
        /// Seleciona todos os usuário do Database que possuem parte da string nome.
        /// </summary>
        /// <param name="nome">Usado para buscar os usuários no Database.</param>
        /// <returns>Seleciona uma lista de usuários ou gera uma exceção.</returns>
        public IEnumerable<User> SelecionarPorNome(string nome)
        {
            return _userRepositorio.SelecionarPorNome(nome);
        }

        /// <summary>
        /// Seleciona todos os usuário do Database de acordo com o papel buscado.
        /// </summary>
        /// <param name="IdPapel">Usado para buscar o papel no Database.</param>
        /// <returns>Seleciona uma lista usuários ou gera uma exceção.</returns>
        public IEnumerable<User> SelecionarPorPapel(int idPapel)
        {
            //repositório do papel
            if (_papelRepositorio.SelecionarPorId(idPapel) == null)
            {
                throw new NaoEncontradoException();
            }

            return _userRepositorio.SelecionarPorPapel(idPapel);
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de inserir um usuário.
        /// </summary>
        /// <param name="entity">Objeto com os dados do usuário.</param>
        /// <returns>ID do usuário inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(User entity)
        {
            Validacoes(entity);
            return _userRepositorio.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public User AlterarPerfilUsuario(int id, User entity)
        {
            Validacoes(entity);
            if(_userRepositorio.SelecionarPorId(id) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma usuário com este ID: { id }");
            }

            entity.ID = id;
            _userRepositorio.AlterarPerfilUsuario(entity);

            return _userRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public User AlterarAtivoInativo(int id, User entity)
        {
            entity.ID = id;
            _userRepositorio.AlterarAtivoInativo(entity);

            return _userRepositorio.SelecionarPorId(id);
        }
        
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _userRepositorio.SelecionarPorId(id);

            _userRepositorio.Deletar(obj.ID);
        }

        public void Validacoes(User entity)
        {
            var UserExistente = _userRepositorio.SelecionarPorNome(entity.Nome);
            int UserExistente_ = UserExistente.Count();

            //Verifica se existem campos vazios.
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            //Verifica se nenhum campo do objeto entity excede o limite de caracteres estipulado no Database.
            if (ExcedeLimiteDeCaracteres.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos que excedem o limite de caracteres permitidos!");
            }

            //Verifica se o usuário já foi cadastrado.
            if (UserExistente_ != 0)
            {
                throw new ConflitoException($"O usuário: \"{entity.Nome}\", já foi cadastrado!");
            }
        }
    }
}
