using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface ITriboNegocio
    {
        Tribo Alterar(int id, Tribo entity);
        Tribo AlterarAtivoInativo(int id, Tribo entity);
        void Deletar(int id);
        int Inserir(Tribo entity);
        IEnumerable<Tribo> Selecionar();
        Tribo SelecionarPorDescricao(string desc);
        Tribo SelecionarPorId(int id);
        IEnumerable<Tribo> SelecionarTribosAtivas();
    }
}