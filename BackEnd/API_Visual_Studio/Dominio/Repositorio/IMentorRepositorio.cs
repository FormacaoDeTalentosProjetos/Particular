using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Dominio.Repositorio
{
    public interface IMentorRepositorio
    {
        void Deletar(int id);
        int Inserir(Mentor entity);
        IEnumerable<Mentor> Selecionar();
        IEnumerable<MentorDto> SelecionarAtivos();
        Mentor SelecionarPorId(int id);
    }
}