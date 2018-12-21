using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Repositorio.Configuracao
{
    public static class dbConnection
    {
        private static string DataSource = "WKSJUN000105"; //DESKTOP-CGEHIFJ\\SQLEXPRESS      //WKSJUN000105
        private static string Catalog = "SCOPIO";
        private static string User = "sa";
        private static string Password = "123Aa321";

        private static string Conn1 = @"Data Source=" + DataSource + ";Initial Catalog=" + Catalog + ";Persist Security Info=True;User ID=" + User + ";Password=" + Password + ";Connect Timeout=30";
        private static string Conn2 = @"Data Source=" + DataSource + ";Initial Catalog=" + Catalog + ";Integrated Security=True;Connect Timeout=30";

        private static string ConnectionString = Conn1;
        public static string GetConn() { return ConnectionString; }
    }
}
