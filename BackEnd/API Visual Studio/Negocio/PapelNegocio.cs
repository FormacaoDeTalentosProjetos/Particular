using Dominio;
using Dominio.Excecoes;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class PapelNegocio
    {
        private readonly PapelRepositorio _papelDados;

        public PapelNegocio()
        {
            _papelDados = new PapelRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Papel> Selecionar()
        {
            var lista = _papelDados.Selecionar();

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
            var obj = _papelDados.SelecionarPorId(id);

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
            var obj = _papelDados.SelecionarPorDescricao(desc);

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
            var UserExistente = _papelDados.SelecionarPorDescricao(entity.Nome);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado o PAPEL {UserExistente.Nome}, cadastrado!");
            }

            return _papelDados.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Papel AlterarPapel(int id, Papel entity)
        {
            entity.ID = id;
            _papelDados.AlterarPapel(entity);

            return _papelDados.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _papelDados.SelecionarPorId(id);

            _papelDados.Deletar(obj.ID);
        }
    }
}