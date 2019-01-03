using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Negocio.Validacoes;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    public class PapelNegocio : IPapelNegocio
    {
        /// <summary>
        /// Declara o repositório do papel. 
        /// </summary>
        private readonly IPapelRepositorio _papelRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public PapelNegocio(IPapelRepositorio papelRepositorio)
        {
            _papelRepositorio = papelRepositorio;
        }

        /// <summary>
        /// Seleciona todos os papéis do Database.
        /// </summary>
        /// <returns>Lista de papéis.</returns>
        public IEnumerable<Papel> Selecionar()
        {
            return _papelRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um papel do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um papel no Database.</param>
        /// <returns>Seleciona um papel ou gera uma exceção.</returns>
        public Papel SelecionarPorId(int id)
        {
            var obj = _papelRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum papel com este ID: { id }");

            return obj;
        }

        /// <summary>
        /// Seleciona um papel do Database.
        /// </summary>
        /// <param name="desc">Usado para buscar um papel no Database.</param>
        /// <returns>Seleciona um papel ou gera uma exceção.</returns>
        public Papel SelecionarPorDescricao(string desc)
        {
            var obj = _papelRepositorio.SelecionarPorDescricao(desc);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de inserir um papel.
        /// </summary>
        /// <param name="entity">>Objeto com os dados do papel.</param>
        /// <returns>ID do papel inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(Papel entity)
        {
            Validacoes(entity);

            return _papelRepositorio.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Papel Alterar(int id, Papel entity)
        {
            //verifica se o Id existe
            if (_papelRepositorio.SelecionarPorId(id) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum papel com este ID: { id }");
            }

            entity.ID = id;
            _papelRepositorio.Alterar(entity);

            return _papelRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _papelRepositorio.SelecionarPorId(id);

            _papelRepositorio.Deletar(obj.ID);
        }

        public void Validacoes(Papel entity)
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

            //Verifica se o papel já foi cadastrado.
            if (_papelRepositorio.SelecionarPorDescricao(entity.Desc) != null)
            {
                throw new ConflitoException($"O papel: \"{entity.Desc}\", já foi cadastrado!");
            }
        }

    }
}