namespace Scopio.API.Model
{
    /// <summary>
    /// Contêm o objeto que fará a comunicação entre a API e as regras de negócio do MentorSquad.
    /// </summary>
    public class MentorSquadInput
    {
        /// <summary>
        /// 
        /// </summary>
        public int IdSquad { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int IdMentor { get; set; }
    }
}
