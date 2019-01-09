using System;
using System.Runtime.Serialization;

namespace Negocio
{
    [Serializable]
    internal class NuloException : Exception
    {
        public NuloException()
        {
        }

        public NuloException(string message) : base(message)
        {
        }

        public NuloException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected NuloException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}