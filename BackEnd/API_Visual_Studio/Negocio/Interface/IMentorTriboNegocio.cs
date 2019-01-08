using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Negocio.Interface
{
    public interface IMentorTriboNegocio
    {
        MentorTribo Alterar(int id, MentorTribo entity);
        void Deletar(int id);
        int Inserir(MentorTribo entity);
        IEnumerable<MentorTribo> Selecionar();
        MentorTribo SelecionarPorId(int id);
        IEnumerable<MentorTriboDto> SelecionarTribos();
    }
}