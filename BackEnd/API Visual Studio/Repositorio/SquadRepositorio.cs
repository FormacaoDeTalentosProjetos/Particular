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
    public class SquadRepositorio : IRepositorioBase<Squad>
    {
        /// <summary>
        /// PESQUISA SQUAD
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<Squad> Selecionar()
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var lista = connection.Query<Squad>($"SELECT * " +
                                                    $"FROM [TB_SQUAD]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA SQUAD POR ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Squad SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Squad>($"SELECT * " +
                                                                $"FROM [TB_SQUAD] " +
                                                                $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// PESQUISA SQUAD POR NOME
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Squad SelecionarPorDescricao(string desc)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Squad>($"SELECT * " +
                                                                $"FROM [TB_SQUAD] " +
                                                                $"WHERE Nome = '{desc}'");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA SQUAD
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Squad entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_SQUAD] " +
                                                      $"(IdUnidade, IdTribo, Logo, Nome, Status) " +
                                                      $"VALUES ({entity.IdUnidade}, {entity.IdTribo}, " +
                                                      $"'{entity.Logo}', '{entity.Nome}', 1)" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// ALTERA SQUAD
        /// </summary>
        /// <param name="entity"></param>
        public void Alterar(Squad entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_SQUAD] " +
                                   $"SET IdUnidade = {entity.IdUnidade}, " +
                                   $"Idtribo = {entity.IdTribo}, " +
                                   $"Logo = '{entity.Logo}', " +
                                   $"Nome = '{entity.Nome}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
        /// RETIRA ASSOCIÇÃO COM TRIBO
        /// </summary>
        /// <param name="entity"></param>
        public void SairDaTribo(Squad entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_SQUAD] " +
                                   $"SET Idtribo = NULL " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
        /// ALTERA STATUS (ATIVO/INATIVO)
        /// </summary>
        /// <param name="entity"></param>
        public void AlterarAtivoInativo(Squad entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_SQUAD] " +
                                   $"SET Status = '{entity.Status}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
		/// DELETA SQUAD POR {ID}
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_SQUAD] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
