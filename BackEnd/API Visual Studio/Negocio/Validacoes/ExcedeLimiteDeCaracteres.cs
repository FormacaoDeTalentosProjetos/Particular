using Dominio;

namespace Negocio.Validacoes
{
    public class ExcedeLimiteDeCaracteres
    {
       #region Pais
        /// <summary>
        /// Verifica se o tamanho dos campos do objeto excedem o limite estabelecido no banco de dados.
        /// </summary>
        /// <param name="entity">Contêm os dados do campo.</param>
        /// <returns>
        /// True se algum campo possuir mais caracteres do que o limite declarado no banco de dados ou
        /// False caso todos os campos respeitem esta especificação.
        /// </returns>
        public static bool Verificar(Pais entity)
        {
            if (entity.Nome.Length > 50 || entity.Sigla.Length > 3)
            {
                return true;
            }
        
            return false;
        }
        #endregion
    }
}
