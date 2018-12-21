using Dominio;
using Dominio.Excecoes;
using Repositorio;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LoginNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly LoginRepositorio _loginRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public LoginNegocio()
        {
            _loginRepositorio = new LoginRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Login> Selecionar()
        {
            var lista = _loginRepositorio.Selecionar();

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
            var obj = _loginRepositorio.SelecionarPorId(id);

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
            var obj = _loginRepositorio.SelecionarPorUser(user);

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
            var objUser = _loginRepositorio.EfetuarLoginUser(login, senha);

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
            _loginRepositorio.AlterarSenha(entity);

            return _loginRepositorio.SelecionarPorId(id);
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
            _loginRepositorio.AlterarUser(entity);

            return _loginRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Login AlterarAtivoInativo(int id, Login entity)
        {
            entity.ID = id;
            _loginRepositorio.AlterarAtivoInativo(entity);

            return _loginRepositorio.SelecionarPorId(id);
        }

        /// <summary>
		/// 
		/// </summary>
		/// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _loginRepositorio.SelecionarPorId(id);

            _loginRepositorio.Deletar(obj.ID);
        }
    }
}
