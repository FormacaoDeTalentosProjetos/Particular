using Dapper;
using Dominio;
using Dominio.dto;
using Repositorio.Interface;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class MentorTriboRepositorio : IMentorTriboRepositorio
    {
        /// <summary>
        /// PESQUISA ASSOCIAÇÕES MENTOR_TRIBO
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<MentorTribo> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<MentorTribo>($"SELECT * " +
                                                          $"FROM [TB_MENTOR_TRIBO]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA ASSOCIAÇÃO MENTOR_TRIBO POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public MentorTribo SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MentorTribo>($"SELECT * " +
                                                                      $"FROM [TB_MENTOR_TRIBO] " +
                                                                      $"WHERE ID = @id",
                                                                      new
                                                                      {
                                                                          id
                                                                      });
                return obj;
            }
        }


        /// <summary>
        /// Método que seleciona o mentor daquela tribo.
        /// </summary>
        /// <param name="idTribo">IdUser a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do membro selecionado.</returns>
        public MentorTribo SelecionarTribosPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MentorTribo>($"SELECT M.ID, M.IdTribo, M.IdUser, U.Nome AS NomeUser, S.Nome AS NomeTribo FROM [TB_MENTOR_TRIBO] AS M INNER JOIN [TB_USER] AS U ON M.IdUser = U.ID INNER JOIN[TB_TRIBO]AS S ON M.IdTribo = S.ID WHERE M.IdTribo = @id",
                    new {
                        id
                    });
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA ASSOCIAÇÃO MENTOR_TRIBO
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(int IdTribo, int IdUser)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MENTOR_TRIBO] " +
                                                      $"(IdTribo, IdUser) " +
                                                      $"VALUES (@IdTribo, @IdUser)" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID",
                                                      new {
                                                          IdTribo,
                                                          IdUser
                                                      });
                return obj;
            }
        }

        /// <summary>
        /// ALTERA ASSOCIAÇÃO MENTOR_TRIBO
        /// </summary>
        /// <param name="entity"></param>
        public void Alterar(MentorTribo entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_MENTOR_TRIBO] " +
                                   $"SET IdTribo = {entity.IdTribo}, " +
                                   $"IdMentor = {entity.IdUser} " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
		/// DELETA ASSOCIAÇÃO MENTOR_TRIBO
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_MENTOR_TRIBO] " +
                                   $"WHERE ID = {id}");
            }
        }

    }
}

