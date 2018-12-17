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
        private readonly UserRepositorio _UserDados;
        private readonly LoginRepositorio _LoginDados;

        public UserNegocio()
        {
            _UserDados = new UserRepositorio();
            _LoginDados = new LoginRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<User> SelecionarTodos()
        {
            var lista = _UserDados.SelecionarTodos();

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
            var lista = _UserDados.SelecionarAtivos();

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
            var obj = _UserDados.SelecionarPorId(id);

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
            var obj = _UserDados.SelecionarPorNome(nome);

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
            var obj = _UserDados.SelecionarPorPapel(IdPapel);

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
            var UserExistente = _LoginDados.SelecionarPorUser(entity.Username);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado o USUÁRIO {UserExistente.Username}, para outro Login!");
            }

            return _UserDados.Inserir(entity);
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
            _UserDados.AlterarPerfilUsuario(entity);

            return _UserDados.SelecionarPorId(id);
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
            _UserDados.AlterarAtivoInativo(entity);

            return _UserDados.SelecionarPorId(id);
        }
        
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _UserDados.SelecionarPorId(id);

            _UserDados.Deletar(obj.ID);
        }
    }
}
