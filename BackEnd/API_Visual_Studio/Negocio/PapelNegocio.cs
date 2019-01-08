using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
<<<<<<< HEAD
using Negocio.Validacoes;
using Repositorio;
=======
using Repositorio;
using Repositorio.Abstracao;
using System;
>>>>>>> parent of ff85fb7... Merge pull request #24 from LemuresMutualistas/BackEnd
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class PapelNegocio : INegocioBase<Papel>
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly PapelRepositorio _papelRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public PapelNegocio()
        {
            _papelRepositorio = new PapelRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Papel> Selecionar()
        {
            var lista = _papelRepositorio.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Papel SelecionarPorId(int id)
        {
            var obj = _papelRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Papel SelecionarPorDescricao(string desc)
        {
            var obj = _papelRepositorio.SelecionarPorDescricao(desc);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Papel entity)
        {
            var UserExistente = _papelRepositorio.SelecionarPorDescricao(entity.Desc);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado o PAPEL {UserExistente.Desc}, cadastrado!");
            }

            return _papelRepositorio.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Papel Alterar(int id, Papel entity)
        {
            entity.ID = id;
            _papelRepositorio.Alterar(entity);

            return _papelRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _papelRepositorio.SelecionarPorId(id);

            _papelRepositorio.Deletar(obj.ID);
        }
    }
}