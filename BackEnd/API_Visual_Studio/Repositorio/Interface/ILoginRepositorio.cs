using System.Collections.Generic;
using Dominio;

namespace Repositorio.Interface
{
    public interface ILoginRepositorio
    {
        void AlterarAtivoInativo(Login entity);
        void AlterarSenha(Login entity);
        void AlterarUser(Login entity);
        void Deletar(int id);
        Login EfetuarLogin(string user, string senha);
        IEnumerable<Login> Selecionar();
        Login SelecionarPorId(int id);
        Login SelecionarPorUser(string user);
    }
}