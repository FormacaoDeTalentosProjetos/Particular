using Dominio;
using Dominio.Excecoes;
using Repositorio;
using System.Collections.Generic;


namespace Negocio
{
    public class MentorNegocio
    {
        /// <summary>
        /// Declara o repositório do mentor.
        /// </summary>
        private readonly MentorRepositorio _mentorRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public MentorNegocio()
        {
            _mentorRepositorio = new MentorRepositorio();
        }

        /// <summary>
        /// Seleciona todas os mentores do Database.
        /// </summary>
        /// <returns>Lista de mentores.</returns>
        public IEnumerable<Mentor> Selecionar()
        {
            return _mentorRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um mentor do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um mentor no Database.</param>
        /// <returns>Seleciona um mentor ou gera uma exceção.</returns>
        public Mentor SelecionarPorId(int id)
        {
            var obj = _mentorRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum mentor com este ID: {id}");

            return obj;
        }

        /// <summary>
        /// Verifica se o campo IdUser é válido.
        /// </summary>
        /// <param name="entity">Objeto com os dados do mentor.</param>
        /// <returns>ID do mentor inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(Mentor entity)
        {
            Validacao(entity);

            return _mentorRepositorio.Inserir(entity);
        }

        /// <summary>
        /// Verifica se o mentor existe no Database antes de deleta-lo.
        /// </summary>
        /// <param name="id">Usado para buscar o mentor no Database.</param>
        public void Deletar(int id)
        {
            var obj = SelecionarPorId(id);

            if (obj == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum mentor com este ID: { id }");
            }

            _mentorRepositorio.Deletar(obj.Id);
        }

        public void Validacao(Mentor entity)
        {
            var _userRepositorio = new UserRepositorio();

            //Verifica se o Id do usuário existe
            if (_userRepositorio.SelecionarPorId(entity.IdUser) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário com este ID: {entity.IdUser}");
            }
        }

    }
}
