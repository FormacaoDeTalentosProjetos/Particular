namespace Scopio.API.Model
{
    /// <summary>
    /// Contêm o objeto que fará a comunicação entre a API e as regras de negócio da Tribo. 
    /// </summary>
    public class TriboInput
    {
        /// <summary>
        /// 
        /// </summary>
        public int IdUser { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Logo { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Nome { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public bool Status { get; set; }
    }
}
