using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Model
{
    public class LoginInput
    {
        public int IdUser { get; set; }
        public string Username { get; set; }
        public string Senha { get; set; }
    }
}
