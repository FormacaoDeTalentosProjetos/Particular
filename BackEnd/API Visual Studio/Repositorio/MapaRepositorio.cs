using Dapper;
using Dominio;
using Repositorio.Configuracao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Repositorio
{
    public class MapaRepositorio
    {
        /// <summary>
        /// Método que seleciona todos o mapa do database.
        /// </summary>
        /// <returns>Todos as unidades do Database.</returns>
        public Mapa SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(dbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Mapa>($"SELECT * " +
                                                               $"FROM [TB_PAPEL] " +
                                                               $"WHERE ID = {id}");
                return obj;
            }
        }

    }
}
