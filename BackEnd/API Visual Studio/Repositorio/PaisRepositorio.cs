using Dapper;
using Dominio;
using Repositorio.Abstracao;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class PaisRepositorio: IRepositorioBase<Pais>
    {
        /// <summary>
        /// Método que seleciona todos os paises do database.
        /// </summary>
        /// <returns>Todos os paises do Database.</returns>
        public IEnumerable<Pais> Selecionar()
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var lista = connection.Query<Pais>($"SELECT * " +
                                                   $"FROM [TB_PAIS]");
                return lista;
            }
        }

        /// <summary>
        /// Método que seleciona um país do database.
        /// </summary>
        /// <param name="id">Id a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do pais selecionado.</returns>
        public Pais SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Pais>($"SELECT * " +
                                                               $"FROM [TB_PAIS] " +
                                                               $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// Método para inserir um país.
        /// </summary>
        /// <param name="entity">Objeto com os dados do país a ser inserido.</param>
        /// <returns>ID do país inserido no Database.</returns>
        public int Inserir(Pais entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_PAIS] " +
                                                      $"(Nome, Sigla) " +
                                                      $"VALUES ('{entity.Nome}', " +
                                                      $"'{entity.Sigla}')" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// Método para alterar um país.
        /// </summary>
        /// <param name="entity">Objeto que contêm os dados do país.</param>
        public void Alterar(Pais entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_PAIS] " +
                                   $"SET Nome = '{entity.Nome}', " +
                                   $"Sigla = '{entity.Sigla}' " +
                                   $"WHERE ID = {entity.Id}");
            }
        }

        /// <summary>
        /// Método para deletar um país.
        /// </summary>
        /// <param name="id">Usado para selecionar o país no Database.</param>
        public void Deletar(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_PAIS] " +
                                   $"WHERE ID = {id}");
            }
        }

    }
}
