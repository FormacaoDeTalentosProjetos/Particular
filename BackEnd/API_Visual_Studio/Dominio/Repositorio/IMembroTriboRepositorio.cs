using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Dominio.Repositorio
{
    public interface IMembroTriboRepositorio
    {
        void Alterar(MembroTribo entity);
        void Deletar(int id);
        int Inserir(MembroTribo entity);
        IEnumerable<MembroTribo> Selecionar();
        MembroTribo SelecionarPorId(int id);
        IEnumerable<MembroTriboDto> SelecionarPorIdTribo(int idTribo);
        MembroTribo SelecionarPorIdUser(int idUser);
    }
}