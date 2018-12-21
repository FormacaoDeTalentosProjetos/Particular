using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Model
{
    public class UserInput
    {
        //USUÁRIO
        public int IdPapel { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public bool Status { get; set; }

        //LOGIN
        public string Username { get; set; }
        public string Senha { get; set; }
    }
}
