using System.Collections.Generic;
using Dominio;

namespace Repositorio.Interface
{
    public interface IUserRepositorio
    {
        void AlterarAtivoInativo(User entity);
        void AlterarPerfilUsuario(User entity);
        void Deletar(int id);
        int InserirComResponsabilidade(User entity);
        int InserirSemResponsabilidade(User entity);
        IEnumerable<User> Selecionar();
        IEnumerable<User> SelecionarMentores();
        IEnumerable<User> SelecionarAtivos();
        User SelecionarPorId(int id);
        IEnumerable<User> SelecionarPorNome(string nome);
        IEnumerable<User> SelecionarPorPapel(int IdPapel);
    }
}