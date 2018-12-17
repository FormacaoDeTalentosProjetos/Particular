using System;
using System.Collections.Generic;
using System.Text;

namespace Dominio.Excecoes
{
    [Serializable]
    public class NaoEncontradoException : Exception
    {
        public NaoEncontradoException()
        {
        }

        public NaoEncontradoException(int id)
        {
        }

        public NaoEncontradoException(string message) : base(message)
        {
        }
    }
}
