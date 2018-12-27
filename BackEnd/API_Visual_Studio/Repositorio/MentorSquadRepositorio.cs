using Dapper;
using Dominio;
using Dominio.dto;
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
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
        public IEnumerable<MentorSquadDto> SelecionarPorIdSquad(int idSquad)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.Query<MentorSquadDto>($"SELECT [TB_MENTOR_SQUAD].[ID], [IdSquad], [Nome], [TB_PAPEL].[Desc] AS [DescPapel], [TB_NVPAPEL].[Desc] AS [DescNivel] " +
                                                           $"FROM [TB_MENTOR_SQUAD] " +
                                                           $"INNER JOIN TB_USER ON " +
                                                           $"[IdUser] = [TB_USER].[ID] " +
                                                           $"INNER JOIN TB_PAPEL ON " +
                                                           $"[IdPapel] = [TB_PAPEL].[ID] " +
                                                           $"INNER JOIN TB_NVPAPEL ON " +
                                                           $"[IdNivel] = [TB_NVPAPEL].[ID] " +
                                                           $"WHERE IdSquad = {idSquad} AND [TB_USER].[Status] = 1");
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MENTOR_SQUAD] " +
                                                      $"(IdSquad, IdUser) " +
                                                      $"VALUES ({entity.IdSquad}, {entity.IdUser})" +
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
                                   $"IdUser = {entity.IdUser} " +
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
