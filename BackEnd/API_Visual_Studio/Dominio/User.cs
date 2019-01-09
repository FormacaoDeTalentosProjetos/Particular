namespace Dominio
{
    public class User
    {
        public int ID { get; set; }
        public int IdPapel { get; set; }
        public int IdNivel { get; set; }
        public int? IdResponsabilidade { get; set; }
        public string Avatar { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public bool Status { get; set; }
        public string UserName { get; set; }
        public string Senha { get; set; }
    }
}