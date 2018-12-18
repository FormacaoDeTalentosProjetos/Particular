using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Negocio.Validacoes;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class UnidadeNegocio : INegocioBase<Unidade>
    {
        /// <summary>
        /// Declara o repositório da unidade.
        /// </summary>
        private readonly UnidadeRepositorio _unidadeRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public UnidadeNegocio()
        {
            _unidadeRepositorio = new UnidadeRepositorio();
        }

        /// <summary>
        /// Seleciona todas as unidades do Database.
        /// </summary>
        /// <returns>Lista de unidades.</returns>
        public IEnumerable<Unidade> Selecionar()
        {
            return _unidadeRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona uma unidade do Database.
        /// </summary>
        /// <param name="id">>Usado para buscar uma unidade no Database.</param>
        /// <returns>Seleciona uma unidade ou gera uma exceção.</returns>
        public Unidade SelecionarPorId(int id)
        {
            var obj = _unidadeRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhuma unidade com este ID: { id }");

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de inserir uma unidade.
        /// </summary>
        /// <param name="entity">Objeto com os dados da unidade.</param>
        /// <returns>>ID da unuidade inserida no Database ou gera alguma exceção.</returns>
        public int Inserir(Unidade entity)
        {
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            if (ExcedeLimiteDeCaracteres.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos que excedem o limite de caracteres permitidos!");
            }

            return _unidadeRepositorio.Inserir(entity);
        }

        /// <summary>
        ///  Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de alterar os dados de uma unidade.
        /// </summary>
        /// <param name="entity">Objeto com os dados da unidade.</param>
        /// <returns>>ID da unidade inserida no Database ou gera alguma exceção.</returns>
        public Unidade Alterar(int id, Unidade entity)
        {
            if (CamposVazios.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos obrigatórios que não foram preenchidos!");
            }

            if (ExcedeLimiteDeCaracteres.Verificar(entity))
            {
                throw new DadoInvalidoException("Existem campos que excedem o limite de caracteres permitidos!");
            }

            entity.Id = id;
            _unidadeRepositorio.Alterar(entity);

            return _unidadeRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// Verifica se a unidade existe no Database antes de deleta-lo.
        /// </summary>
        /// <param name="id">Usado para buscar a unidade no Database.</param>
        public void Deletar(int id)
        {
            var obj = SelecionarPorId(id);

            if (obj == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhuma unidade com este ID: { id }");
            }
            _unidadeRepositorio.Deletar(obj.Id);
        }
    }
}
