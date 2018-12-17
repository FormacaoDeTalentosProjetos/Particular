using System;
using System.Collections.Generic;
using System.Text;

namespace Dominio
{
    public class User
    {
        public int ID { get; set; }
        public int IdPapel { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public int Status { get; set; }
        public string Username { get; set; }
        public string Senha { get; set; }
    }
}