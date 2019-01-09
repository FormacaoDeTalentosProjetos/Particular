using Dapper;
using Dominio;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class ResponsabilidadeRepositorio : IResponsabilidadeRepositorio
    {

        /// <summary>
        /// CADASTRA RESPONSABILIDADE
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Responsabilidade entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; "+
                                                      $"INSERT INTO[TB_RESPONSABILIDADE]([Nome]) VALUES('{entity.Nome}') "+
                                                      $"SET @ID = SCOPE_IDENTITY(); " +
                                                      $"SELECT @ID ");

                return obj;
            }
        }

        /// <summary>
        /// PESQUISA PAPEIS
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<Responsabilidade> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<Responsabilidade>($"SELECT * " +
                                                    $"FROM [TB_RESPONSABILIDADE]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA RESPONSABILIDADE POR ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Responsabilidade SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Responsabilidade>($"SELECT * " +
                                                               $"FROM [TB_RESPONSABILIDADE] " +
                                                               $"WHERE ID = @id",                                                         
                                                               new{
                                                                   id                                                              
                                                               });
                return obj;
            }
        }

        /// <summary>
        /// PESQUISA PAPEL POR DESCRIÇÃO
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Responsabilidade SelecionarPorNome(string Nome)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Responsabilidade>($"SELECT * " +
                                                                $"FROM [TB_RESPONSABILIDADE] " +
                                                                $"WHERE [Nome] = '@Nome'",
                                                                new {
                                                                    Nome
                                                               });
                return obj;
            }
        }
    }
}
