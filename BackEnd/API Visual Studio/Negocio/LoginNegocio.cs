using Dominio;
using Dominio.Excecoes;
using Repositorio;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LoginNegocio
    {
        private readonly LoginDados _loginDados;
        private readonly UserDados _UserDados;

        public LoginNegocio()
        {
            _loginDados = new LoginDados();
            _UserDados = new UserDados();
        }

        public IEnumerable<Login> Selecionar()
        {
            var lista = _loginDados.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        public Login SelecionarPorId(int id)
        {
            var obj = _loginDados.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        public Login SelecionarPorUser(string user)
        {
            var obj = _loginDados.SelecionarPorUser(user);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        // ALTERAR A FORMA DE LOGIN PARA EMAIL E OU NICKNAME
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

        /*
        public int Inserir(Login entity, User Entity)
        {
            var UserExistente = _loginDados.SelecionarPorUser(entity.Username);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado o USUÁRIO {UserExistente.Username}, para outro Login!");
            }

            return _loginDados.Inserir(entity, Entity);
        }
        */

        public Login AlterarSenha(int id, Login entity)
        {
            entity.ID = id;
            _loginDados.AlterarSenha(entity);

            return _loginDados.SelecionarPorId(id);
        }

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
