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
    public class MembroTriboRepositorio : IRepositorioBase<MembroTribo>
    {
        /// <summary>
        /// Método que seleciona todos os membros do database.
        /// </summary>
        /// <returns>Todos os membros do Database.</returns>
        public IEnumerable<MembroTribo> Selecionar()
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
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
            using (var connection = new SqlConnection(dbConnection.GetConn()))
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
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MembroTribo>($"SELECT * " +
                                                                      $"FROM [TB_MEMBRO_TRIBO] " +
                                                                      $"WHERE IdUser = {idUser}");
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
            using (var connection = new SqlConnection(dbConnection.GetConn()))
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
            using (var connection = new SqlConnection(dbConnection.GetConn()))
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
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_MEMBRO_TRIBO] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
