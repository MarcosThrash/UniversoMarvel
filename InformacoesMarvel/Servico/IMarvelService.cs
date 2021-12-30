using InformacoesMarvel.Models;
using InformacoesMarvel.Servico.ServicoMarvelModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InformacoesMarvel.Servico
{
    public interface IMarvelService
    {
        Task<ResponseResult<ComicsVM>> Comics();
        Task<ResponseResult<ComicsVM>> Comic(int id);
        Task<ResponseResult<PersonagemVM>> Personagens(int limit, int offset);        
        Task<ResponseResult<PersonagemVM>> Personagem(int id);
        Task<int> TotalPersonagens();
    }
}
