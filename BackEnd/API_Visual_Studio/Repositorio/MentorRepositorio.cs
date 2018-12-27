using Dapper;
using Dominio;
using Repositorio.Abstracao;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class MentorRepositorio
    {
        /// <summary>
        /// Método que seleciona todos os mentores do database.
        /// </summary>
        /// <returns>Todos os mentores do Database.</returns>
        public IEnumerable<Mentor> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<Mentor>($"SELECT * " +
                                                      $"FROM [TB_MENTOR]");
                return lista;
            }
        }

        /// <summary>
        /// Método que seleciona um mentor do database.
        /// </summary>
        /// <param name="id">Id a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do mentor selecionado.</returns>
        public Mentor SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Mentor>($"SELECT * " +
                                                                  $"FROM [TB_MENTOR] " +
                                                                  $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// Método para inserir um mentor.
        /// </summary>
        /// <param name="entity">Objeto com os dados do mentor a ser inserido.</param>
        /// <returns>ID do mentor inserido no Database.</returns>
        public int Inserir(Mentor entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MENTOR] " +
                                                      $"(IdUser) " +
                                                      $"VALUES ({entity.IdUser}) " +
                                                      $"SET @ID = SCOPE_IDENTITY(); " +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// Método para deletar um mentor.
        /// </summary>
        /// <param name="id">Usado para selecionar o mentor no Database.</param>
        public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_MENTOR] " +
                                   $"WHERE ID = {id}");
            }
        }

    }
}
