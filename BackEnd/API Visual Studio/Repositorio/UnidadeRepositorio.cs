using Dapper;
using Dominio;
using Repositorio.Abstracao;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class UnidadeRepositorio//: IRepositorioBase<Unidade>
    {
        /// <summary>
        /// Método que seleciona todos as unidades do database.
        /// </summary>
        /// <returns>Todos as unidades do Database.</returns>
        public IEnumerable<Unidade> Selecionar()
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
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
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Unidade>($"SELECT * " +
                                                                  $"FROM [TB_UNIDADE] " +
                                                                  $"WHERE ID = {id}");
                return obj;
            }
        }
    }
}
