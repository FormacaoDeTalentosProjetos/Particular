using Dominio;
using Dominio.Excecoes;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class UserNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly UserRepositorio _userRepositorio;

        /// <summary>
        /// 
        /// </summary>
        private readonly LoginRepositorio _loginRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public UserNegocio()
        {
            _userRepositorio = new UserRepositorio();
            _loginRepositorio = new LoginRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<User> SelecionarTodos()
        {
            var lista = _userRepositorio.SelecionarTodos();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<User> SelecionarAtivos()
        {
            var lista = _userRepositorio.SelecionarAtivos();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public User SelecionarPorId(int id)
        {
            var obj = _userRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>
        public IEnumerable<User> SelecionarPorNome(string nome)
        {
            var obj = _userRepositorio.SelecionarPorNome(nome);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="IdPapel"></param>
        /// <returns></returns>
        public IEnumerable<User> SelecionarPorPapel(int IdPapel)
        {
            var obj = _userRepositorio.SelecionarPorPapel(IdPapel);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(User entity)
        {
            var UserExistente = _loginRepositorio.SelecionarPorUser(entity.Username);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado o USUÁRIO {UserExistente.Username}, para outro Login!");
            }

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
    }
}
