using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Repositorio.Configuracao
{
    public static class dbConnection
    {
        private static string DataSource = "NB_CACIANO";
        private static string Catalog = "SCOPIO";
        private static string User = "sa";
        private static string Password = "br1108";

        private static string Conn =
        //@"Data Source="+ DataSource +";Initial Catalog="+ Catalog +";Persist Security Info=True;User ID="+ User +";Password="+ Password +";Connect Timeout=30";

        "Data Source=DESKTOP-CGEHIFJ\\SQLEXPRESS;Initial Catalog=SCOPIO;Integrated Security=True";

        private static string ConnectionString = Conn;
        public static string GetConn() { return ConnectionString; }
    }
}
