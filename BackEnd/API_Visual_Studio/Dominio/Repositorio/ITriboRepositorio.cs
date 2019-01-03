using System.Collections.Generic;
using Dominio;

namespace Dominio.Repositorio
{
    public interface ITriboRepositorio
    {
        void Alterar(Tribo entity);
        void AlterarAtivoInativo(Tribo entity);
        void Deletar(int id);
        int Inserir(Tribo entity);
        IEnumerable<Tribo> Selecionar();
        Tribo SelecionarPorDescricao(string desc);
        Tribo SelecionarPorId(int id);
        IEnumerable<Tribo> SelecionarTribosAtivas();
    }
}