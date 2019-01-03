using Dapper;
using Dominio;
using Repositorio.Configuracao;
using Dominio.Repositorio;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class LoginRepositorio : ILoginRepositorio
    {
        /// <summary>
        /// PESQUISA LOGINS
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<Login> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<Login>($"SELECT * " +
                                                    $"FROM [TB_LOGIN] ");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA LOGIN POR ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Login SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Login>($"SELECT * " +
                                                                $"FROM [TB_LOGIN] " +
                                                                $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// PESQUISA LOGIN POR USERNAME
        /// </summary>
        /// <param name="nick"></param>
        /// <returns></returns>
        public Login SelecionarPorUser(string user)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Login>($"SELECT * " +
                                                                $"FROM [TB_LOGIN] " +
                                                                $"WHERE Username LIKE '%{user}' " +
                                                                $"OR Username Like '{user}%' " +
                                                                $"OR Username Like '%{user}%'");
                return obj;
            }
        }

        /// <summary>
        /// REALIZA LOGIN PELO USERNAME E SENHA
        /// </summary>
        /// <param name="user"></param>
        /// <param name="senha"></param>
        /// <returns></returns>
        public Login EfetuarLogin(string user, string senha)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Login>($"DECLARE @HASH VARCHAR(32); " +
                                                                $"DECLARE @STATUS INT; " +
                                                                $"SET @STATUS = (SELECT Status " +
                                                                $"FROM [TB_LOGIN] " +
                                                                $"WHERE Username = '{user}') " +
                                                                $"SET @HASH = '{senha}' " +
                                                                $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                                $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                                $"SELECT * " +
                                                                $"FROM [TB_LOGIN] " +
                                                                $"WHERE Username = '{user}' AND Senha = @HASH AND @STATUS = 1");
                return obj;
            }
        }

        /// <summary>
        /// ALTERA SENHA DE LOGIN DE USUÁRIO
        /// </summary>
        /// <param name="entity"></param>
        public void AlterarSenha(Login entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DECLARE @HASH VARCHAR(32); " +
                                   $"SET @HASH = '{entity.Senha}' " +
                                   $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                   $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                   $"UPDATE [TB_LOGIN] " +
                                   $"SET Senha = @HASH " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
        /// ALTERA O USERNAME DO LOGIN DE USUÁRIO
        /// </summary>
        /// <param name="entity"></param>
        public void AlterarUser(Login entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_LOGIN] " +
                                   $"SET Username = '{entity.Username}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
        /// ALTERA STATUS DO USUÁRIO (ATIVO/INATIVO)
        /// </summary>
        /// <param name="entity"></param>
        public void AlterarAtivoInativo(Login entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_LOGIN] " +
                                   $"SET Status = '{entity.Status}' " +
                                   $"WHERE ID = {entity.ID}" +
                                   $"UPDATE [TB_USER] " +
                                   $"SET Status = '{entity.Status}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
		/// DELETA UM LOGIN DE USUÁRIO
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_LOGIN] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
