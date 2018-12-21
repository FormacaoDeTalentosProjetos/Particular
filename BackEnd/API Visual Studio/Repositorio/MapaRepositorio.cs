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
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Mapa SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Mapa>($"SELECT * " +
                                                               $"FROM [TB_PAPEL] " +
                                                               $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Mapa SelecionarPorDescricao(string desc)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Mapa>($"SELECT * " +
                                                               $"FROM [TB_PAPEL] " +
                                                               $"WHERE Nome = '{desc}'");
                return obj;
            }
        }
    }
}
