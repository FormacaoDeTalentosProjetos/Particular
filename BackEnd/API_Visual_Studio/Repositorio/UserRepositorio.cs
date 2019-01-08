using Dapper;
using Dominio;
using Repositorio.Configuracao;
using Repositorio.Interface;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class UserRepositorio : IUserRepositorio
    {
        /// <summary>
        /// PESQUISA TODOS OS USUÁRIOS
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<User> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<User>($"SELECT * " +
                                                  $"FROM [TB_USER]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA TODOS OS USUÁRIOS
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<User> SelecionarMentores()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<User>($"select u.ID, u.Nome from [TB_USER] as u inner join [TB_RESPONSABILIDADE] as r on u.IdResponsabilidade = r.ID where UPPER(r.Nome) = 'MENTOR' and u.Status = 1");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA TODOS OS USUÁRIOS "ATIVOS"
        /// </summary>
        /// <returns></returns>
        public IEnumerable<User> SelecionarAtivos()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<User>($"SELECT * " +
                                                 $"FROM [TB_USER] " +
                                                 $"WHERE Nome LIKE '%{nome}' " +
                                                 $"OR Nome Like '{nome}%' " +
                                                 $"OR Nome Like '%{nome}%'");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA USUÁRIO PELO NOME
        /// </summary>
        /// <param name="nick"></param>
        /// <returns></returns>
        public IEnumerable<User> SelecionarPorPapel(int IdPapel)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
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
        public int InserirSemResponsabilidade(User entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @IDUser INT; " +
                                                      $"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_USER] " +
                                                      $"(IdPapel, IdNivel, Avatar, Nome, Email, Tel, Status) " +
                                                      $"VALUES ({entity.IdPapel}, {entity.IdNivel}, " +
                                                      $"'{entity.Avatar}', '{entity.Nome}', '{entity.Email}', " +
                                                      $"'{entity.Tel}', 1)" +
                                                      $"SET @IDUser = SCOPE_IDENTITY();" +
                                                      $"SELECT @IDUser " +
                                                      $"DECLARE @HASH VARCHAR(32); " +
                                                      $"SET @HASH = '{entity.Senha}' " +
                                                      $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                      $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                      $"INSERT INTO [TB_LOGIN] " +
                                                      $"(IdUser, Username, Senha, Status) " +
                                                      $"VALUES (@IDUser, " +
                                                      $"'{entity.UserName}', " +
                                                      $"@HASH, 1)" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA USUARIO
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int InserirComResponsabilidade(User entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @IDUser INT; " +
                                                      $"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_USER] " +
                                                      $"(IdPapel, IdNivel, IdResponsabilidade, Avatar, Nome, Email, Tel, Status) " +
                                                      $"VALUES ({entity.IdPapel}, {entity.IdNivel}, {entity.IdResponsabilidade}," +
                                                      $"'{entity.Avatar}', '{entity.Nome}', '{entity.Email}', " +
                                                      $"'{entity.Tel}', 1)" +
                                                      $"SET @IDUser = SCOPE_IDENTITY();" +
                                                      $"SELECT @IDUser " +
                                                      $"DECLARE @HASH VARCHAR(32); " +
                                                      $"SET @HASH = '{entity.Senha}' " +
                                                      $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                      $"SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)" +
                                                      $"INSERT INTO [TB_LOGIN] " +
                                                      $"(IdUser, Username, Senha, Status) " +
                                                      $"VALUES (@IDUser, " +
                                                      $"'{entity.UserName}', " +
                                                      $"@HASH, 1)" +
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
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_USER] " +
                                   $"SET IdPapel = {entity.IdPapel}, " +
                                   $"IdNivel = {entity.IdNivel}, " +
                                   $"Avatar = '{entity.Avatar}', " +
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
		/// 
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_USER] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
