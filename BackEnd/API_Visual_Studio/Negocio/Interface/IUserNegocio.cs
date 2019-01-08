using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface IUserNegocio
    {
        User AlterarAtivoInativo(int id, User entity);
        User AlterarPerfilUsuario(int id, User entity);
        void Deletar(int id);
        int Inserir(User entity);
        IEnumerable<User> Selecionar();
        IEnumerable<User> SelecionarAtivos();
        User SelecionarPorId(int id);
        IEnumerable<User> SelecionarPorNome(string nome);
        IEnumerable<User> SelecionarPorPapel(int idPapel);
        void Validacoes(User entity);
    }
}