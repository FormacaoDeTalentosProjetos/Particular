namespace Scopio.API.Model
{
    /// <summary>
    ///Contêm o objeto que fará a comunicação entre a API e as regras de negócio do nível de papel. 
    /// </summary>
    public class NivelPapelInput
    {
        /// <summary>
        /// Atributo Descrição.
        /// </summary>
        public string Descricao { get; set; }
        
        /// <summary>
        /// Atributo Nível.
        /// </summary>
        public int Nivel { get; set; }
    }
}
