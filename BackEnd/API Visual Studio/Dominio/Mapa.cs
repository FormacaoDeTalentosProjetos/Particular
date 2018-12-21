using System;
using System.Collections.Generic;
using System.Text;

namespace Dominio
{
    public class Mapa
    {
        public MentorTribo MentorTribo { get; set; }
        public MentorSquad MentorSquad { get; set; }
        public Tribo Tribo { get; set; }
        public Squad Squad { get; set; }
        public User Usuario { get; set; }
    }
}
