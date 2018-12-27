using Dominio;
using Dominio.dto;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class MentorTriboNegocio : INegocioBase<MentorTribo>
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly MentorTriboRepositorio _mentorTriboRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public MentorTriboNegocio()
        {
            _mentorTriboRepositorio = new MentorTriboRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<MentorTribo> Selecionar()
        {
            var lista = _mentorTriboRepositorio.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public MentorTribo SelecionarPorId(int id)
        {
            var obj = _mentorTriboRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// Seleciona um membro do Database.
        /// </summary>
        /// <returns>Seleciona um membro ou gera uma exceção.</returns>
        public IEnumerable<MentorTriboDto> SelecionarTribos()
        {
            var obj = _mentorTriboRepositorio.SelecionarTribos();
            
            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(MentorTribo entity)
        {
            return _mentorTriboRepositorio.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public MentorTribo Alterar(int id, MentorTribo entity)
        {
            entity.ID = id;
            _mentorTriboRepositorio.Alterar(entity);

            return _mentorTriboRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _mentorTriboRepositorio.SelecionarPorId(id);

            _mentorTriboRepositorio.Deletar(obj.ID);
        }
    }
}
