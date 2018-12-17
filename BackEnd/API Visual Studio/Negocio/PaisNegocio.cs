using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Negocio.Validacoes;
using Repositorio;
using System.Collections.Generic;

namespace Negocio
{
    public class PaisNegocio: INegocioBase<Pais>
    {
        private readonly PaisRepositorio _paisRepositorio;

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
        /// <param name="id">>Usado para buscar um país no Database.</param>
        /// <returns>Seleciona um país ou gera uma exceção.</returns>
        public Pais SelecionarPorId(int id)
        {
            var obj = _paisRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum pais com este ID: { id }");

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de inserir um país.
        /// </summary>
        /// <param name="entity">Objeto com os dados do país.</param>
        /// <returns>>ID do país inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(Pais entity)
        {
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            if (ExcedeLimiteDeCaracteres.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos que excedem o limite de caracteres permitidos!");
            }

            return _paisRepositorio.Inserir(entity);
        }

        /// <summary>
        ///  Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de alterar os dados de um país.
        /// </summary>
        /// <param name="entity">Objeto com os dados do país.</param>
        /// <returns>>ID do país inserido no Database ou gera alguma exceção.</returns>
        public Pais Alterar(int id, Pais entity)
        {
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            if (ExcedeLimiteDeCaracteres.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos que excedem o limite de caracteres permitidos!");
            }

            return _paisRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// Verifica se o país existe no Database antes de deleta-lo.
        /// </summary>
        /// <param name="id">Usado para buscar o país no Database.</param>
        public void Deletar(int id)
        {
            var obj = SelecionarPorId(id);

            if (obj == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum pais com este ID: { id }");
            }
            _paisRepositorio.Deletar(obj.Id);
        }

    }
}
