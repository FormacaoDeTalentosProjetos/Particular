namespace Scopio.API.Model
{
    /// <summary>
    /// Contêm o objeto que fará a comunicação entre a API e as regras de negócio do User. 
    /// </summary>
    public class UserInput
    {
        //USUÁRIO
        /// <summary>
        /// 
        /// </summary>
        public int IdPapel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Nome { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Email { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Tel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public bool Status { get; set; }

        //LOGIN
        /// <summary>
        /// 
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Senha { get; set; }
    }
}
