using System.Collections.Generic;
using Dominio;

namespace Repositorio.Interface
{
    public interface IPaisRepositorio
    {
        void Alterar(Pais entity);
        void Deletar(int id);
        int Inserir(Pais entity);
        IEnumerable<Pais> Selecionar();
        Pais SelecionarPorId(int id);
        Pais SelecionarPorNome(string nome);
    }
}