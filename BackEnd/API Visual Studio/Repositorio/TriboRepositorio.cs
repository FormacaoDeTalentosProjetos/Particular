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
    public class TriboRepositorio : IRepositorioBase<Tribo>
    {
        /// <summary>
        /// PESQUISA TRIBOS
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<Tribo> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<Tribo>($"SELECT * " +
                                                    $"FROM [TB_TRIBO]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA TRIBO POR ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Tribo SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Tribo>($"SELECT * " +
                                                                $"FROM [TB_TRIBO] " +
                                                                $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// PESQUISA TRIBO POR NOME
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Tribo SelecionarPorDescricao(string desc)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Tribo>($"SELECT * " +
                                                                $"FROM [TB_TRIBO] " +
                                                                $"WHERE Nome = '{desc}'");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA TRIBO
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Tribo entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_TRIBO] " +
                                                      $"(Logo, Nome, Status) " +
                                                      $"VALUES ('{entity.Logo}', " +
                                                      $"'{entity.Nome}', 1)" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// ALTERA TRIBO
        /// </summary>
        /// <param name="entity"></param>
        public void Alterar(Tribo entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_TRIBO] " +
                                   $"SET Logo = '{entity.Logo}', " +
                                   $"Nome = '{entity.Nome}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
        /// ALTERA STATUS (ATIVO/INATIVO)
        /// </summary>
        /// <param name="entity"></param>
        public void AlterarAtivoInativo(Tribo entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_TRIBO] " +
                                   $"SET Status = '{entity.Status}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
		/// DELETA TRIBO POR {ID}
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_TRIBO] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
