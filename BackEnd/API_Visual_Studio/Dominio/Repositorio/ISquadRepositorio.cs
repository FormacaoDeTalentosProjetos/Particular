using System.Collections.Generic;
using Dominio;

namespace Dominio.Repositorio
{
    public interface ISquadRepositorio
    {
        void Alterar(Squad entity);
        void AlterarAtivoInativo(Squad entity);
        void Deletar(int id);
        int Inserir(Squad entity);
        void SairDaTribo(Squad entity);
        IEnumerable<Squad> Selecionar();
        Squad SelecionarPorDescricao(string desc);
        Squad SelecionarPorId(int id);
        IEnumerable<Squad> SelecionarPorIdTribo(int idTribo);
        IEnumerable<Squad> SquadSemTribo();
    }
}