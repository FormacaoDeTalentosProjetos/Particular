using Dominio.Negocio;
using Dominio.Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Dominio.Service
{
    public class LoginDominioService : ILoginDominioService
    {
        private readonly ILoginRepositorio _loginRepositorio;

        public LoginDominioService(ILoginRepositorio loginRepositorio)
        {
            _loginRepositorio = loginRepositorio;
        }

        /// <summary>
        /// Seleciona todas as os logins do Database.
        /// </summary>
        /// <returns>Lista de logins.</returns>
        public IEnumerable<Login> Selecionar()
        {
            var lista = _loginRepositorio.Selecionar();

            return lista;
        }

        /// <summary>
        /// Seleciona um login do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um login no Database.</param>
        /// <returns>Seleciona um login ou gera uma exceção.</returns>
        public Login SelecionarPorId(int id)
        {
            var obj = _loginRepositorio.SelecionarPorId(id);

            return obj;
        }

        /// <summary>
        /// Verifica se existe um usuário com o login e a senha indicados.
        /// </summary>
        /// <param name="login">Usado para buscar o usuário no Database.</param>
        /// <param name="senha">Usado para buscar o usuário no Database.</param>
        /// <returns></returns>
        public Login EfetuarLogin(string login, string senha)
        {
            var objUser = _loginRepositorio.EfetuarLogin(login, senha);

            return objUser;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Login AlterarSenha(Login obj)
        {
            int id = obj.ID;
            _loginRepositorio.AlterarSenha(obj);

            return _loginRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Login AlterarUser(Login obj)
        {
            int id = obj.ID;
            _loginRepositorio.AlterarUser(obj);

            return _loginRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Login AlterarAtivoInativo(Login obj)
        {
            int id = obj.ID;
            _loginRepositorio.AlterarAtivoInativo(obj);

            return _loginRepositorio.SelecionarPorId(id);
        }

        /// <summary>
		/// Verifica se o login existe no Database antes de deleta-lo.
		/// </summary>
		/// <param name="id">Usado para buscar o login no Database.</param>
		public void Deletar(int id)
        {
            var obj = _loginRepositorio.SelecionarPorId(id);

            _loginRepositorio.Deletar(obj.ID);
        }
    }
}
