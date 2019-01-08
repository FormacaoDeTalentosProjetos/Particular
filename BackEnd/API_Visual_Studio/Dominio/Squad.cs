namespace Dominio
{
    public class Squad
    {
        public int ID { get; set; }

        //Permite que o IdTribo receba null
        public int IdMentor { get; set; }
        public int? IdTribo { get; set; }
        public int IdUnidade { get; set; }
        public string Logo { get; set; }
        public string Nome { get; set; }
        public bool Status { get; set; }
    }
}
