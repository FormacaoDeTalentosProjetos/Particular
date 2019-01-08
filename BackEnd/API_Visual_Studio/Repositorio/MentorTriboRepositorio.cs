using Dapper;
using Dominio;
<<<<<<< HEAD
using Dominio.dto;
=======
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd
using Repositorio.Abstracao;
using Repositorio.Configuracao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Repositorio
{
    public class MentorTriboRepositorio : IRepositorioBase<MentorTribo>
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
                                                                      $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA ASSOCIAÇÃO MENTOR_TRIBO
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(MentorTribo entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MENTOR_TRIBO] " +
                                                      $"(IdTribo, IdUser) " +
                                                      $"VALUES ({entity.IdTribo}, {entity.IdUser})" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
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
                                   $"IdUser = {entity.IdUser} " +
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
