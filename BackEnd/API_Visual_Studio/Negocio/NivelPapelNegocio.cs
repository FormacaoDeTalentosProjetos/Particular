using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Negocio.Validacoes;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    /// <summary>
    /// Regras de Negocio para o Nível de Papel
    /// </summary>
    public class NivelPapelNegocio : INivelPapelNegocio
    {
        /// <summary>
        /// Declara o repositório do nível de papel.
        /// </summary>
        private readonly INivelPapelRepositorio _nivelPapelRepositorio;

        /// <summary>
        /// Construtor para instaciar o repositório.
        /// </summary>
        public NivelPapelNegocio(INivelPapelRepositorio nivelPapelRepositorio)
        {
            _nivelPapelRepositorio = nivelPapelRepositorio;
        }

        /// <summary>
        /// Seleciona todas os niveis de papel do Database.
        /// </summary>
        /// <returns>Lista de niveis de papel.</returns>
        public IEnumerable<NivelPapel> Selecionar()
        {
            return _nivelPapelRepositorio.Selecionar();
        }

        /// <summary>
        /// Seleciona um nível de papel do Database.
        /// </summary>
        /// <param name="id">Usado para buscar um nível de papel no Database.</param>
        /// <returns>Seleciona um nível de papel ou gera uma exceção.</returns>
        public NivelPapel SelecionarPorId(int id)
        {
            var obj = _nivelPapelRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum nível de papel com este ID: { id }");

            return obj;
        }

        /// <summary>
        /// Seleciona um nível de papel do Database.
        /// </summary>
        /// <param name="nome">Usado para buscar um nível de papel no Database.</param>
        /// <returns>Seleciona um nível de papel ou gera uma exceção.</returns>
        public NivelPapel SelecionarPorNome(string nome)
        {
            var obj = _nivelPapelRepositorio.SelecionarPorNome(nome);

            if (obj == null)
                throw new NaoEncontradoException($"Não foi encontrado nenhum nível de papel com este Nome: { nome }");

            return obj;
        }

        /// <summary>
        /// Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de inserir um nível de papel no database.
        /// </summary>
        /// <param name="entity">Objeto com os dados do nível papel.</param>
        /// <returns>ID do nível papel inserido no Database ou gera alguma exceção.</returns>
        public int Inserir(NivelPapel entity)
        {
            Validacoes(entity);

            return _nivelPapelRepositorio.Inserir(entity);
        }


        /// <summary>
        ///  Verifica se existem campos obrigatórios que não estão preenchidos e se os campos respeitam 
        /// os limites de caracteres especificados no Database. Antes de alterar os ddados de um nível de papel no database.
        /// </summary>
        /// <param name="entity">Objeto com os dados do nível de papel.</param>
        /// <returns>ID da nível papel inserido no Database ou gera alguma exceção.</returns>
        public NivelPapel Alterar(int id, NivelPapel entity)
        {
            Validacoes(entity);

            //Verifica se a unidade já foi cadastrada.
            if (_nivelPapelRepositorio.SelecionarPorNome(entity.Desc) != null)
            {
                throw new ConflitoException($"O nível de papel: \"{entity.Desc}\", já foi cadastrada!");
            }

            entity.ID = id;
            _nivelPapelRepositorio.Alterar(entity);

            return _nivelPapelRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// Verifica se o nível de papel existe no Database antes de deleta-lo.
        /// </summary>
        /// <param name="id">Usado para buscar o nível papel no Database.</param>
        public void Deletar(int id)
        {
            var obj = SelecionarPorId(id);

            if (obj == null)
            {
                throw new NaoEncontradoException($"Não foi encontrado nenhum nível de papel com este ID: { id }");
            }
            _nivelPapelRepositorio.Deletar(obj.ID);
        }

        /// <summary>
        /// Método Com as válidações necessarias para o nível de Papel.
        /// </summary>
        /// <param name="entity"></param>
        public void Validacoes(NivelPapel entity)
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
        }

    }
}
