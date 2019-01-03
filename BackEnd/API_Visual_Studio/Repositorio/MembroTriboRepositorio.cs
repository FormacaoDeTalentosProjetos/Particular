using Dapper;
using Dominio;
using Dominio.dto;
using Dominio.Repositorio;
using Repositorio.Configuracao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Repositorio
{
    public class MembroTriboRepositorio : IMembroTriboRepositorio
    {
        /// <summary>
        /// Método que seleciona todos os membros do database.
        /// </summary>
        /// <returns>Todos os membros do Database.</returns>
        public IEnumerable<MembroTribo> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<MembroTribo>($"SELECT * " +
                                                          $"FROM [TB_MEMBRO_TRIBO]");
                return lista;
            }
        }

        /// <summary>
        /// Método que seleciona um membro do database.
        /// </summary>
        /// <param name="id">Id a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do membro selecionado.</returns>
        public MembroTribo SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MembroTribo>($"SELECT * " +
                                                                      $"FROM [TB_MEMBRO_TRIBO] " +
                                                                      $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// Método que seleciona um membro do database.
        /// </summary>
        /// <param name="idUser">IdUser a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do membro selecionado.</returns>
        public MembroTribo SelecionarPorIdUser(int idUser)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MembroTribo>($"SELECT * " +
                                                                      $"FROM [TB_MEMBRO_TRIBO] " +
                                                                      $"WHERE IdUser = {idUser}");
                return obj;
            }
        }

        /// <summary>
        /// Método que seleciona membros de uma squad.
        /// </summary>
        /// <param name="idTribo">IdUser a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do membro selecionado.</returns>
        public IEnumerable<MembroTriboDto> SelecionarPorIdTribo(int idTribo)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.Query<MembroTriboDto>($"SELECT [TB_MEMBRO_TRIBO].[ID], [Nome], [TB_PAPEL].[Desc] AS [DescPapel], [TB_NVPAPEL].[Desc] AS [DescNivel] " +
                                                           $"FROM [TB_MEMBRO_TRIBO] " +
                                                           $"INNER JOIN TB_USER ON " +
                                                           $"[IdUser] = [TB_USER].[ID] " +
                                                           $"INNER JOIN TB_PAPEL ON " +
                                                           $"[IdPapel] = [TB_PAPEL].[ID] " +
                                                           $"INNER JOIN TB_NVPAPEL ON " +
                                                           $"[IdNivel] = [TB_NVPAPEL].[ID] " +
                                                           $"WHERE [IdTribo] = {idTribo} AND [TB_USER].[Status] = 1");
                return obj;
            }
        }

        /// <summary>
        /// Método para inserir um membro.
        /// </summary>
        /// <param name="entity">Objeto com os dados do membro a ser inserido.</param>
        /// <returns>ID do membro inserido no Database.</returns>
        public int Inserir(MembroTribo entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MEMBRO_TRIBO] " +
                                                      $"(IdUser, IdSquad) " +
                                                      $"VALUES ({entity.IdUser}, " +
                                                      $"{entity.IdTribo})" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// Método para alterar um membro.
        /// </summary>
        /// <param name="entity">Objeto que contêm os dados do membro.</param>
        public void Alterar(MembroTribo entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_MEMBRO_TRIBO] " +
                                   $"SET IdUser = {entity.IdUser}, " +
                                   $"IdSquad = {entity.IdTribo} " +
                                   $"WHERE ID = {entity.Id}");
            }
        }

        /// <summary>
        /// Método para deletar um membro.
        /// </summary>
        /// <param name="id">Usado para selecionar o membro no Database.</param>
        public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_MEMBRO_TRIBO] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
