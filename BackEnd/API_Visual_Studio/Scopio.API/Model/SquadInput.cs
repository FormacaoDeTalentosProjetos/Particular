namespace Scopio.API.Model
{
    /// <summary>
    /// Contêm o objeto que fará a comunicação entre a API e as regras de negócio da Squad 
    /// </summary>
    public class SquadInput
    {
        /// <summary>
        /// 
        /// </summary>
        public int IdUnidade { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int IdTribo { get; set; }
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
