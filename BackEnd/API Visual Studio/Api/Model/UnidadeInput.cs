namespace Api.Model
{
    /// <summary>
    /// Contêm o objeto que fará a comunicação entre a API e as regras de negócio da Unidade. 
    /// </summary>
    public class UnidadeInput
    {
        /// <summary>
        /// 
        /// </summary>
        public int IdPais { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Nome { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string EstSigla { get; set; }
    }
}
