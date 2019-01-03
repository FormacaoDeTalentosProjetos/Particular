using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Negocio.Validacoes;
using Repositorio;
using System.Collections.Generic;

namespace Negocio
{
    public class PaisNegocio : IPaisNegocio
    {
        /// <summary>
        /// Declara o repositório do país.
        /// </summary>
        private readonly PaisRepositorio _paisRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public PaisNegocio()
        {
            _paisRepositorio = new PaisRepositorio();
        }

        /// <summary>
        /// Seleciona todas os paises do Database.
        /// </summary>
        /// <returns>Lista de paises.</returns>
        public IEnumerable<Pais> Selecionar()
        {
            return _paisRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um país do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um país no Database.</param>
        /// <returns>Seleciona um país ou gera uma exceção.</returns>
        public Pais SelecionarPorId(int id)
        {
            var obj = _paisRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum país com este ID: { id }");

            return obj;
        }

        /// <summary>
        /// Seleciona um país do Database.
        /// </summary>
        /// <param name="nome">Usado para buscar um país no Database.</param>
        /// <returns>Seleciona um país ou gera uma exceção.</returns>
        public Pais SelecionarPorNome(string nome)
        {
            var obj = _paisRepositorio.SelecionarPorNome(nome);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum país com este Nome: { nome }");

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de inserir um país.
        /// </summary>
        /// <param name="entity">Objeto com os dados do país.</param>
        /// <returns>ID do país inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(Pais entity)
        {
            Validacoes(entity);

            return _paisRepositorio.Inserir(entity);
        }

        /// <summary>
        ///  Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de alterar os dados de um país.
        /// </summary>
        /// <param name="entity">Objeto com os dados do país.</param>
        /// <returns>ID do país inserido no Database ou gera alguma exceção.</returns>
        public Pais Alterar(int id, Pais entity)
        {
            Validacoes(entity);

            if(_paisRepositorio.SelecionarPorId(id) == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum país com este ID: { id }");
            }

            entity.Id = id;
            _paisRepositorio.Alterar(entity);

            return _paisRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// Verifica se o país existe no Database antes de deleta-lo.
        /// </summary>
        /// <param name="id">Usado para buscar o país no Database.</param>
        public void Deletar(int id)
        {
            var obj = _paisRepositorio.SelecionarPorId(id);

            if (obj == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum país com este ID: { id }");
            }
            _paisRepositorio.Deletar(obj.Id);
        }

        public void Validacoes(Pais entity)
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

            ////Verifica se o pais já foi cadastrado.
            if (_paisRepositorio.SelecionarPorNome(entity.Nome) != null)
            {
                throw new ConflitoException($"O país: \"{entity.Nome}\", já foi cadastrado!");
            }
        }
    }
}
