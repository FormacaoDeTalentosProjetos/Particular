namespace Api.Model
{   /// <summary>
    /// Contêm o objeto que fará a comunicação entre a API e as regras de negócio do MembroSquad.
    /// </summary>
    public class MembroSquadInput
    {
        /// <summary>
        /// 
        /// </summary>
        public int IdUser { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int IdSquad { get; set; }
    }
}
