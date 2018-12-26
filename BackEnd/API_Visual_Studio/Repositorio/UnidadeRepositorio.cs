using Dapper;
using Dominio;
using Repositorio.Abstracao;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class UnidadeRepositorio: IRepositorioBase<Unidade>
    {
        /// <summary>
        /// Método que seleciona todos as unidades do database.
        /// </summary>
        /// <returns>Todos as unidades do Database.</returns>
        public IEnumerable<Unidade> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<Unidade>($"SELECT * " +
                                                      $"FROM [TB_UNIDADE]");
                return lista;
            }
        }

        // <summary>
        /// Método que seleciona uma unidade do database.
        /// </summary>
        /// <param name="id">Id a ser buscado no Database.</param>
        /// <returns>Objeto com os dados da unidade selecionada.</returns>
        public Unidade SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Unidade>($"SELECT * " +
                                                                  $"FROM [TB_UNIDADE] " +
                                                                  $"WHERE ID = {id}");
                return obj;
            }
        }

        // <summary>
        /// Método que seleciona uma unidade do database.
        /// </summary>
        /// <param name="nome">Nome da unidade a ser buscada no Database.</param>
        /// <returns>Objeto com os dados da unidade selecionada.</returns>
        public Unidade SelecionarPorNome(string nome)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Unidade>($"SELECT * " +
                                                                  $"FROM [TB_UNIDADE] " +
                                                                  $"WHERE Nome = '{nome}'");
                return obj;
            }
        }

        /// <summary>
        /// Método para inserir uma unidade.
        /// </summary>
        /// <param name="entity">Objeto com os dados da unidade a ser inserida.</param>
        /// <returns>ID da unidade inserida no Database.</returns>
        public int Inserir(Unidade entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_UNIDADE] " +
                                                      $"(IdPais, Nome, EstSigla) " +
                                                      $"VALUES ({entity.IdPais}, " +
                                                      $"'{entity.Nome}', '{entity.EstSigla}')" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// Método para alterar uma unidade.
        /// </summary>
        /// <param name="entity">Objeto que contêm os dados da unidade.</param>
        public void Alterar(Unidade entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_UNIDADE] " +
                                   $"SET IdPais = {entity.IdPais}, " +
                                   $"Nome = '{entity.Nome}', " +
                                   $"EstSigla = '{entity.EstSigla}' " +
                                   $"WHERE ID = {entity.Id}");
            }
        }

        /// <summary>
        /// Método para deletar uma unidade.
        /// </summary>
        /// <param name="id">Usado para selecionar a unidade no Database.</param>
        public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_UNIDADE] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}
