using System;

namespace Dominio.Excecoes
{
    public class DadoInvalidoException: Exception
    {
        public DadoInvalidoException()
        {
        }

        public DadoInvalidoException(int id)
        {
        }

        public DadoInvalidoException(string message) : base(message)
        {
        }
    }
}
