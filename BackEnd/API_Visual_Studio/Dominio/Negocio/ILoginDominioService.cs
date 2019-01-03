using System;
using System.Collections.Generic;
using System.Text;

namespace Dominio.Negocio
{
    public interface ILoginDominioService
    {
        Login AlterarAtivoInativo(Login entity);
        Login AlterarSenha(Login entity);
        Login AlterarUser(Login entity);
        void Deletar(int id);
        Login EfetuarLogin(string login, string senha);
        IEnumerable<Login> Selecionar();
        Login SelecionarPorId(int id);
    }
}
