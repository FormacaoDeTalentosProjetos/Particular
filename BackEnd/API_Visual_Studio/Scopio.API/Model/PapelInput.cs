namespace Scopio.API.Model
{
    /// <summary>
    /// Contêm o objeto que fará a comunicação entre a API e as regras de negócio do Papel. 
    /// </summary>
    public class PapelInput
    {
        /// <summary>
        /// 
        /// </summary>
        public string Desc { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Sigla { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Nivel { get; set; }
    }
}
