using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class ResponsabilidadeNegocio : IResponsabilidadeNegocio
    {
        /// <summary>
        /// Declara o repositório do responsabilidade. 
        /// </summary>
        private readonly IResponsabilidadeRepositorio _responsabilidadeRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public ResponsabilidadeNegocio(IResponsabilidadeRepositorio responsabilidadeRepositorio)
        {
            _responsabilidadeRepositorio = responsabilidadeRepositorio;
        }


        /// <summary>
        /// Seleciona uma responsabilidade do Database.
        /// </summary>
        /// <param name="Nome">Usado para buscar uma responsabilidade no Database.</param>
        /// <returns>Seleciona uma responsabilidade ou gera uma exceção.</returns>
        public Responsabilidade SelecionarPorNome(string Nome)
        {
            var obj = _responsabilidadeRepositorio.SelecionarPorNome(Nome);

            if (obj == null)
                throw new NaoEncontradoException("Objeto não encontrado");

            return obj;
        }

        /// <summary>
        /// Seleciona todos as responsabilidades do Database.
        /// </summary>
        /// <returns>Lista de responsabilidades.</returns>
        public IEnumerable<Responsabilidade> Selecionar()
        {
            return _responsabilidadeRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um responsabilidade do Database.
        /// </summary>
        /// <param name="id">Usado para buscar uma responsabilidade no Database.</param>
        /// <returns>Seleciona uma responsabilidade ou gera uma exceção.</returns>
        public Responsabilidade SelecionarPorId(int id)
        {
            var obj = _responsabilidadeRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum usuário com este ID: {id}");

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de inserir uma responsabilidade.
        /// </summary>
        /// <param name="entity">>Objeto com os dados da responsabilidade.</param>
        /// <returns>ID da responsabilidade inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(Responsabilidade entity)
        {
            Validacoes(entity);

            return _responsabilidadeRepositorio.Inserir(entity);
        }





        public void Validacoes(Responsabilidade entity)
        {
            //Verifica se existem campos vazios.
            if (entity.Nome == null)
            {
                throw new NuloException("Nome da responsabilidade deve ser preenchido");
            }

            //Verifica se ja existe o cadastro.
            if (entity.Nome == null)
            {
                throw new NuloException("Nome da responsabilidade deve ser preenchido");
            }
        }

    }
}
