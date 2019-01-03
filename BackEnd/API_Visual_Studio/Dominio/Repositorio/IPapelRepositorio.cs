using System.Collections.Generic;
using Dominio;

namespace Dominio.Repositorio
{
    public interface IPapelRepositorio
    {
        void Alterar(Papel entity);
        void Deletar(int id);
        int Inserir(Papel entity);
        IEnumerable<Papel> Selecionar();
        Papel SelecionarPorDescricao(string desc);
        Papel SelecionarPorId(int id);
    }
}