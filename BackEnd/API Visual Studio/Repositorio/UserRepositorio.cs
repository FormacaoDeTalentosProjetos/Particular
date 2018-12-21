using Dapper;
using Dominio;
using Repositorio.Configuracao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Repositorio
{
    public class UserRepositorio
    {
        /// <summary>
        /// PESQUISA TODOS OS USUÁRIOS
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<User> SelecionarTodos()
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var lista = connection.Query<User>($"SELECT * " +
                                                  $"FROM [TB_USER]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA TODOS OS USUÁRIOS "ATIVOS"
        /// </summary>
        /// <returns></returns>
        public IEnumerable<User> SelecionarAtivos()
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var lista = connection.Query<User>($"SELECT * " +
                                                  $"FROM [TB_USER] " +
                                                  $"WHERE Status = 1");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA USUÁRIO POR ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public User SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<User>($"SELECT * " +
                                                               $"FROM [TB_USER] " +
                                                               $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// PESQUISA USUÁRIO PELO NOME
        /// </summary>
        /// <param name="nick"></param>
        /// <returns></returns>
        public IEnumerable<User> SelecionarPorNome(string nome)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.Query<User>($"SELECT * " +
                                                 $"FROM [TB_USER] " +
                                                 $"WHERE Nome LIKE '%{nome}' " +
                                                 $"OR Nome Like '{nome}%' " +
                                                 $"OR Nome Like '%{nome}%'");
                return obj;
            }
        }

        /// <summary>
        /// PESQUISA USUÁRIO PELO NOME
        /// </summary>
        /// <param name="nick"></param>
        /// <returns></returns>
        public IEnumerable<User> SelecionarPorPapel(int IdPapel)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.Query<User>($"SELECT * " +
                                                 $"FROM [TB_USER] " +
                                                 $"WHERE IdPapel = {IdPapel}");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA USUARIO
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(User entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @IDUser INT; " +
                                                      $"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_USER] " +
                                                      $"(IdPapel, Nome, Email, Tel, Status) " +
                                                      $"VALUES ({entity.IdPapel}, " +
                                                      $"'{entity.Nome}', '{entity.Email}', " +
                                                      $"'{entity.Tel}', 1)" +
                                                      $"SET @IDUser = SCOPE_IDENTITY();" +
                                                      $"SELECT @IDUser " +
                                                      $"DECLARE @HASH VARCHAR(32); " +
                                                      $"SET @HASH = '{entity.Senha}' " +
                                                      $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                      $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                      $"INSERT INTO [TB_LOGIN] " +
                                                      $"(IdUser, Username, Senha) " +
                                                      $"VALUES (@IDUser, " +
                                                      $"'{entity.Username}', " +
                                                      $"@HASH)" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// ALTERA DADOS DE PERFIL DO USUÁRIO
        /// </summary>
        /// <param name="entity"></param>
        public void AlterarPerfilUsuario(User entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_USER] " +
                                   $"SET IdPapel = {entity.IdPapel}, " +
                                   $"Nome = '{entity.Nome}', " +
                                   $"Email = '{entity.Email}', " +
                                   $"Tel = '{entity.Tel}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
        /// ALTERA STATUS DO USUÁRIO (ATIVO/INATIVO)
        /// </summary>
        /// <param name="entity"></param>
        public void AlterarAtivoInativo(User entity)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_USER] " +
                                   $"SET Status = '{entity.Status}' " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
		/// 
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_USER] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
