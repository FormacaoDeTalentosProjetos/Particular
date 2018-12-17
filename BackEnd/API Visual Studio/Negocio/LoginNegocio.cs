using Dominio;
using Dominio.Excecoes;
using Repositorio;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LoginNegocio
    {
        private readonly LoginRepositorio _loginDados;
        private readonly UserRepositorio _UserDados;

        public LoginNegocio()
        {
            _loginDados = new LoginRepositorio();
            _UserDados = new UserRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Login> Selecionar()
        {
            var lista = _loginDados.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Login SelecionarPorId(int id)
        {
            var obj = _loginDados.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public Login SelecionarPorUser(string user)
        {
            var obj = _loginDados.SelecionarPorUser(user);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="login"></param>
        /// <param name="senha"></param>
        /// <returns></returns>
        public Login EfetuarLoginUser(string login, string senha)
        {
            var objUser = _loginDados.EfetuarLoginUser(login, senha);

            if (objUser != null)
            {
                return objUser;
            }
            else
            {
                throw new NaoEncontradoException();
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Login AlterarSenha(int id, Login entity)
        {
            entity.ID = id;
            _loginDados.AlterarSenha(entity);

            return _loginDados.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Login AlterarUser(int id, Login entity)
        {
            entity.ID = id;
            _loginDados.AlterarUser(entity);

            return _loginDados.SelecionarPorId(id);
        }

        /// <summary>
		/// 
		/// </summary>
		/// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _loginDados.SelecionarPorId(id);

            _loginDados.Deletar(obj.ID);
        }
    }
}
