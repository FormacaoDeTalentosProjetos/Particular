namespace Repositorio.Configuracao
{
    public static class DbConnection
    {
        private static string DataSource = "."; //"WKSJUN000105" //WKSJUN000356 //DESKTOP-CGEHIFJ\\SQLEXPRESS
        private static string Catalog = "SCOPIO";
        private static string User = "sa";
        private static string code = "123Aa321";
       
        private static string Conn1 = @"Data Source=" + DataSource + ";Initial Catalog=" + Catalog + ";Persist Security Info=True;User ID=" + User + ";Password=" + code + ";Connect Timeout=30";
        //private static string Conn2 = @"Data Source=" + DataSource + ";Initial Catalog=" + Catalog + ";Integrated Security=True;Connect Timeout=30";

        private static string ConnectionString = Conn1;
        public static string GetConn() { return ConnectionString; }
    }
}
