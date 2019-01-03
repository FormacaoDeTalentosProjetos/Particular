namespace Dominio
{
    public class Login
    {
        public int ID { get; set; }
        public int IdUser { get; set; }
        public string Username { get; set; }
        public string Senha { get; set; }
        public bool Status { get; set; }
    }
}