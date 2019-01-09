using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Negocio.Interface
{
    public interface IMentorTriboNegocio
    {
        MentorTribo Alterar(int id, MentorTribo entity);
        void Deletar(int id);
        int Inserir(int IdTribo, int IdUser);
        IEnumerable<MentorTribo> Selecionar();
        MentorTribo SelecionarPorId(int id);
        MentorTribo SelecionarTribosPorId(int id);
    }
}