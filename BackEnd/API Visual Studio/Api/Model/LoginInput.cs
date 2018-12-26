namespace Api.Model
{   /// <summary>
    ///Contêm o objeto que fará a comunicação entre a API e as regras de negócio do Login. 
    /// </summary>
    public class LoginInput
    {  /// <summary>
        /// 
        /// </summary>
        public int IdUser { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Senha { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public bool Status { get; set; }
    }
}
