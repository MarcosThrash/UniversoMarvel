using InformacoesMarvel.Models;
using System.Collections.Generic;

namespace InformacoesMarvel.Servico.ServicoMarvelModels
{
    public class ResponseResult<T>
    {
        public List<T> Values { get; set; }
        public T Value { get; set; }
        public ErroResponse ErrosReponse { get; set; }

        public ResponseResult(List<T> values)
        {
            Values = values;           
        }

        public ResponseResult(T value)
        {
            Value = value;
        }

        public ResponseResult(ErroResponse erroReponse)
        {         
            ErrosReponse = erroReponse;
        }

    }
}
