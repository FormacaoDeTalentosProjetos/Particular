using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Negocio.Interface
{
    public interface IMentorNegocio
    {
        void Deletar(int id);
        int Inserir(Mentor entity);
        IEnumerable<Mentor> Selecionar();
        IEnumerable<MentorDto> SelecionarAtivos();
        Mentor SelecionarPorId(int id);
        void Validacao(Mentor entity);
    }
}