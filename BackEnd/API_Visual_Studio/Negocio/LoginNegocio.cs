using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    public class LoginNegocio : ILoginNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly ILoginRepositorio _loginRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public LoginNegocio(ILoginRepositorio loginRepositorio)
        {
            _loginRepositorio = loginRepositorio;
        }

        /// <summary>
        /// Seleciona todas as os logins do Database.
        /// </summary>
        /// <returns>Lista de logins.</returns>
        public IEnumerable<Login> Selecionar()
        {
            return _loginRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um login do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um login no Database.</param>
        /// <returns>Seleciona um login ou gera uma exceção.</returns>
        public Login SelecionarPorId(int id)
        {
            var obj = _loginRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum usúario com o ID: {id}");

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

            if (objUser != null)
            {
                return objUser;
            }
            else
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usúario que" +
                                                 $" tenha este login: {login} e esta senha: {senha}");
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
