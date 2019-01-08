using Dominio;
using Dominio.Excecoes;
<<<<<<< HEAD
using Negocio.Validacoes;
using Repositorio;
=======
using Repositorio;
using System;
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd
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
<<<<<<< HEAD
        public UserNegocio()
        {
            _userRepositorio = new UserRepositorio();
=======
        private readonly LoginRepositorio _loginRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public UserNegocio()
        {
            _userRepositorio = new UserRepositorio();
            _loginRepositorio = new LoginRepositorio();
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd
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
<<<<<<< HEAD
            //repositório do papel
            var _papelRepositorio = new PapelRepositorio();

            if (_papelRepositorio.SelecionarPorId(idPapel) == null)
            {
=======
            var obj = _userRepositorio.SelecionarPorPapel(IdPapel);

            if (obj == null)
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd
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
<<<<<<< HEAD
            Validacoes(entity);
=======
            var UserExistente = _loginRepositorio.SelecionarPorUser(entity.Username);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado o USUÁRIO {UserExistente.Username}, para outro Login!");
            }
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd

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
<<<<<<< HEAD
            Validacoes(entity);

            if(_userRepositorio.SelecionarPorId(id) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma usuário com este ID: { id }");
            }

=======
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd
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
<<<<<<< HEAD

        public void Validacoes(User entity)
        {
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
            if (_userRepositorio.SelecionarPorNome(entity.Nome) != null)
            {
                throw new ConflitoException($"O usuário: \"{entity.Nome}\", já foi cadastrado!");
            }
        }

=======
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd
    }
}
