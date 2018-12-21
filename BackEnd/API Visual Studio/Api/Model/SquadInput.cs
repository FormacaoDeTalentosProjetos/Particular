using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Model
{
    public class SquadInput
    {
        public int IdUnidade { get; set; }
        public int IdTribo { get; set; }
        public string Logo { get; set; }
        public string Nome { get; set; }
        public bool Status { get; set; }
    }
}
