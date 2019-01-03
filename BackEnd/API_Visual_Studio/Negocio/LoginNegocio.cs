using Dominio;
using Dominio.Excecoes;
using Dominio.Negocio;
using Negocio.Interface;
using Repositorio;
using System.Collections.Generic;

namespace Negocio
{
    public class LoginNegocio : ILoginNegocio
    {
        /// <summary>
        /// Declara o repositório do Login.
        /// </summary>
        private readonly ILoginDominioService _loginService;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public LoginNegocio(ILoginDominioService loginService)
        {
            _loginService = loginService;
        }

        /// <summary>
        /// Seleciona todas as os logins do Database.
        /// </summary>
        /// <returns>Lista de logins.</returns>
        public IEnumerable<Login> Selecionar()
        {
            var lista = _loginService.Selecionar();

            return lista;
        }

        /// <summary>
        /// Seleciona um login do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um login no Database.</param>
        /// <returns>Seleciona um login ou gera uma exceção.</returns>
        public Login SelecionarPorId(int id)
        {
            var obj = _loginService.SelecionarPorId(id);

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
            var objUser = _loginService.EfetuarLogin(login, senha);

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
            _loginService.AlterarSenha(entity);

            return _loginService.SelecionarPorId(id);
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
            _loginService.AlterarUser(entity);

            return _loginService.SelecionarPorId(id);
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
            _loginService.AlterarAtivoInativo(entity);

            return _loginService.SelecionarPorId(id);
        }

        /// <summary>
		/// Verifica se o login existe no Database antes de deleta-lo.
		/// </summary>
		/// <param name="id">Usado para buscar o login no Database.</param>
		public void Deletar(int id)
        {
            var obj = _loginService.SelecionarPorId(id);

            _loginService.Deletar(obj.ID);
        }
    }
}
