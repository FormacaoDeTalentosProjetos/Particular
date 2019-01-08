using Dapper;
using Dominio;
using Dominio.dto;
using Repositorio.Interface;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class MentorSquadRepositorio : IMentorSquadRepositorio
    {
        /// <summary>
        /// PESQUISA ASSOCIAÇÕES MENTOR_SQUAD
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<MentorSquad> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<MentorSquad>($"SELECT * FROM [TB_MENTOR_SQUAD]");
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MentorSquad>($"SELECT * " +
                                                                      $"FROM [TB_MENTOR_SQUAD] " +
                                                                      $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// Método que seleciona membros de uma squad.
        /// </summary>
        /// <param name="idSquad">IdUser a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do membro selecionado.</returns>
        public MentorSquad SelecionarSquadsPorID(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MentorSquad>($"SELECT * FROM [TB_MENTOR_SQUAD] WHERE IdSquad = {id}");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA ASSOCIAÇÃO MENTOR_SQUAD
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(int IdSquad, int IdUser)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MENTOR_SQUAD] " +
                                                      $"(IdSquad, IdUser) " +
                                                      $"VALUES ({IdSquad}, {IdUser})" +
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_MENTOR_SQUAD] " +
                                   $"SET IdSquad = {entity.IdSquad}, " +
                                   $"IdMentor = {entity.IdUser} " +
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_MENTOR_SQUAD] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
