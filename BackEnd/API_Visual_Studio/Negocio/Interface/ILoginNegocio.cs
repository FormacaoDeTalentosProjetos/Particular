using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface ILoginNegocio
    {
        Login AlterarAtivoInativo(int id, Login entity);
        Login AlterarSenha(int id, Login entity);
        Login AlterarUser(int id, Login entity);
        void Deletar(int id);
        Login EfetuarLogin(string login, string senha);
        IEnumerable<Login> Selecionar();
        Login SelecionarPorId(int id);
    }
}