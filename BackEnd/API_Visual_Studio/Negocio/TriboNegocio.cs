using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    public class TriboNegocio : ITriboNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly ITriboRepositorio _triboRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public TriboNegocio(ITriboRepositorio triboRepositorio)
        {
            _triboRepositorio = triboRepositorio;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Tribo> Selecionar()
        {
            var lista = _triboRepositorio.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Tribo SelecionarPorId(int id)
        {
            var obj = _triboRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Tribo> SelecionarTribosAtivas()
        {
            var lista = _triboRepositorio.SelecionarTribosAtivas();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Tribo SelecionarPorDescricao(string desc)
        {
            var obj = _triboRepositorio.SelecionarPorDescricao(desc);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Tribo entity)
        {
            var UserExistente = _triboRepositorio.SelecionarPorDescricao(entity.Nome);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado a TRIBO {UserExistente.Nome}, cadastrado!");
            }

            return _triboRepositorio.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Tribo Alterar(int id, Tribo entity)
        {
            entity.ID = id;
            _triboRepositorio.Alterar(entity);

            return _triboRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Tribo AlterarAtivoInativo(int id, Tribo entity)
        {
            entity.ID = id;
            _triboRepositorio.AlterarAtivoInativo(entity);

            return _triboRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _triboRepositorio.SelecionarPorId(id);

            _triboRepositorio.Deletar(obj.ID);
        }
    }
}
