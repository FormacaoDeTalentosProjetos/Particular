using System;
using System.Collections.Generic;
using System.Text;

namespace Dominio
{
    public class MentorTribo
    {
        public int ID { get; set; }
        public int IdTribo { get; set; }
        public int IdUser { get; set; }
        public string NomeUser { get; set; }
        public string NomeTribo { get; set; }
    }
}
