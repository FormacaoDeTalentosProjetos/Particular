using Dapper;
using Dominio;
using Repositorio.Abstracao;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class MembroSquadRepositorio : IRepositorioBase<MembroSquad>
    {
        /// <summary>
        /// Método que seleciona todos os membros do database.
        /// </summary>
        /// <returns>Todos os membros do Database.</returns>
        public IEnumerable<MembroSquad> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<MembroSquad>($"SELECT * " +
                                                          $"FROM [TB_MEMBRO_SQUAD]");
                return lista;
            }
        }

        /// <summary>
        /// Método que seleciona um membro do database.
        /// </summary>
        /// <param name="id">Id a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do membro selecionado.</returns>
        public MembroSquad SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MembroSquad>($"SELECT * " +
                                                                      $"FROM [TB_MEMBRO_SQUAD] " +
                                                                      $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// Método que seleciona um membro do database.
        /// </summary>
        /// <param name="idUser">IdUser a ser buscado no Database.</param>
        /// <returns>Objeto com os dados do membro selecionado.</returns>
        public MembroSquad SelecionarPorIdUser(int idUser)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<MembroSquad>($"SELECT * " +
                                                                      $"FROM [TB_MEMBRO_SQUAD] " +
                                                                      $"WHERE IdUser = {idUser}");
                return obj;
            }
        }

        /// <summary>
        /// Método para inserir um membro.
        /// </summary>
        /// <param name="entity">Objeto com os dados do membro a ser inserido.</param>
        /// <returns>ID do membro inserido no Database.</returns>
        public int Inserir(MembroSquad entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_MEMBRO_SQUAD] " +
                                                      $"(IdUser, IdSquad) " +
                                                      $"VALUES ({entity.IdUser}, " +
                                                      $"{entity.IdSquad})" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// Método para alterar um membro.
        /// </summary>
        /// <param name="entity">Objeto que contêm os dados do membro.</param>
        public void Alterar(MembroSquad entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_MEMBRO_SQUAD] " +
                                   $"SET IdUser = {entity.IdUser}, " +
                                   $"IdSquad = {entity.IdSquad} " +
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
                                   $"FROM [TB_MEMBRO_SQUAD] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
