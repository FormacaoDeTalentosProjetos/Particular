using Dapper;
using Dominio;
using Repositorio.Abstracao;
using Repositorio.Configuracao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Repositorio
{
    public class MentorSquadRepositorio : IRepositorioBase<MentorSquad>
    {
        /// <summary>
        /// PESQUISA ASSOCIAÇÕES MENTOR_SQUAD
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<MentorSquad> Selecionar()
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var lista = connection.Query<MentorSquad>($"SELECT * " +
                                                          $"FROM [TB_MENTOR_SQUAD]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA ASSOCIAÇÃO MENTOR_SQUAD POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public MentorSquad SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MentorSquad>($"SELECT * " +
                                                                      $"FROM [TB_MENTOR_SQUAD] " +
                                                                      $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA ASSOCIAÇÃO MENTOR_SQUAD
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(MentorSquad entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MENTOR_SQUAD] " +
                                                      $"(IdTribo, IdMembro) " +
                                                      $"VALUES ({entity.IdSquad}, {entity.IdMembro})" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// ALTERA ASSOCIAÇÃO MENTOR_SQUAD
        /// </summary>
        /// <param name="entity"></param>
        public void Alterar(MentorSquad entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_MENTOR_SQUAD] " +
                                   $"SET IdTribo = {entity.IdSquad}, " +
                                   $"IdMembro = {entity.IdMembro} " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
		/// DELETA ASSOCIAÇÃO MENTOR_SQUAD
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_MENTOR_SQUAD] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
