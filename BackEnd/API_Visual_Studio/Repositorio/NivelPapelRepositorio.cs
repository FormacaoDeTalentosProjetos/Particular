using Dapper;
using Dominio;
using Repositorio.Interface;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    /// <summary>
    /// Claase que acessa a tabela Nivel Papel do database
    /// </summary>
    public class NivelPapelRepositorio : INivelPapelRepositorio
    {
        /// <summary>
        /// Método que seleciona todos os níveis de cada papel do database.
        /// </summary>
        /// <returns>Todos os níveis de cada papel do Database.</returns>
        public IEnumerable<NivelPapel> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<NivelPapel>($"SELECT * " +
                                                         $"FROM [TB_NVPAPEL]");
                return lista;
            }
        }

        /// <summary>
        /// Método que seleciona um nível de papel do database.
        /// </summary>
        /// <param name="id">Id a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do nível papel selecionado.</returns>
        public NivelPapel SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<NivelPapel>($"SELECT * " +
                                                                     $"FROM [TB_NVPAPEL] " +
                                                                     $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// Método que seleciona um nível papel do database.
        /// </summary>
        /// <param name="nome">Nome do nível a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do nível papel selecionado.</returns>
        public NivelPapel SelecionarPorNome(string nome)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<NivelPapel>($"SELECT * " +
                                                                    $"FROM [TB_NVPAPEL] " +
                                                                    $"WHERE Nome = '{nome}'");
                return obj;
            }
        }

        /// <summary>
        /// Método para inserir um nível para um papel.
        /// </summary>
        /// <param name="entity">Objeto com os dados do níveçl de papel a ser inserido.</param>
        /// <returns>ID da unidade inserida no Database.</returns>
        public int Inserir(NivelPapel entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TBNVPAPEL] " +
                                                      $"([Desc], Nivel) " +
                                                      $"VALUES ('{entity.Desc}', " +
                                                      $"{entity.Nivel})" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// Método para alterar um nível de papel.
        /// </summary>
        /// <param name="entity">Objeto que contêm os dados de um nível de papel.</param>
        public void Alterar(NivelPapel entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_NVPAPEL] " +
                                   $"SET [Desc] = '{entity.Desc}', " +
                                   $"Nivel = {entity.Nivel} " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
        /// Método para deletar um nível de papel.
        /// </summary>
        /// <param name="id">Usado para selecionar o nível de papel no Database.</param>
        public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_NVPAPEL] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
