using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Negocio.Interface
{
    public interface IMembroTriboNegocio
    {
        MembroTribo Alterar(int id, MembroTribo entity);
        void Deletar(int id);
        int Inserir(MembroTribo entity);
        IEnumerable<MembroTribo> Selecionar();
        MembroTribo SelecionarPorId(int id);
        IEnumerable<MembroTriboDto> SelecionarPorIdTribo(int id);
        void ValidacoesMembroTribo(MembroTribo entity);
    }
}