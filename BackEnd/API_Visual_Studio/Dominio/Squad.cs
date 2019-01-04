using System;
using System.Collections.Generic;
using System.Text;

namespace Dominio
{
    public class Squad
    {
        public int ID { get; set; }
        public int IdUnidade { get; set; }
        public int IdTribo { get; set; }
        public string Logo { get; set; }
        public string Nome { get; set; }
        public bool Status { get; set; }
    }
}
