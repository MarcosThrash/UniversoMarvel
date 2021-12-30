using InformacoesMarvel.Extensions;
using InformacoesMarvel.Models;
using InformacoesMarvel.Servico.ServicoMarvelModels;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;

namespace InformacoesMarvel.Servico
{
    public class MarvelService: MarvelServiceBase, IMarvelService
    {
        public readonly HttpClient _httpClient;
        private readonly IOptions<AppSettings> _settings;

        public MarvelService(HttpClient httpClient, IOptions<AppSettings> settings)
        {
            httpClient.BaseAddress = new Uri(settings.Value.MarvelBaseUrl);
            _httpClient = httpClient;
            _settings = settings;
        }

        public async Task<ResponseResult<ComicsVM>> Comic(int id)
        {
            var response = await _httpClient.GetAsync($"/v1/public/comics?{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<ComicsVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);
            return new ResponseResult<ComicsVM>(CriarComicVM(dados));
        }

        public async Task<ResponseResult<ComicsVM>> Comics()
        {            
            var response = await _httpClient.GetAsync($"/v1/public/comics?{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<ComicsVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);
            return new ResponseResult<ComicsVM>(CriaListaComicsVM(dados));
        }       

        public async Task<ResponseResult<PersonagemVM>> Personagem(int id)
        {
            var response = await _httpClient.GetAsync($"/v1/public/characters/{id}?{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<PersonagemVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);
            
            var resultado = new ResponseResult<PersonagemVM>(CriarPersonagemVM(dados));

            await PreencherComicsDoPersonagem(resultado.Value);

            return resultado;
        }

        public async Task<ResponseResult<PersonagemVM>> Personagens(int limit, int offset)
        {          
            var response = await _httpClient.GetAsync($"/v1/public/characters{Paginacao(limit, offset)}{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))                            
                return new ResponseResult<PersonagemVM>(await DeserializarObjetosResponse<ErroResponse>(response));
            
            var dados = await DeserializarObjetosResponse<Root>(response);
            return new ResponseResult<PersonagemVM>(CriaListaPersonagemVM(dados));
        }

        public async Task<int> TotalPersonagens()
        {
            var response = await _httpClient.GetAsync($"/v1/public/characters{Paginacao(1, 1)}{GerarAutenticacao(_settings)}");
            var dados = await DeserializarObjetosResponse<Root>(response);
            return dados.Data.Total;
        }

        private async Task PreencherComicsDoPersonagem(PersonagemVM personagem)
        {
            var comics = new List<ComicsVM>();
            foreach (var comic in personagem.Comics)
            {
                var response = await _httpClient.GetAsync($"{comic.ResourceURI}?{GerarAutenticacao(_settings)}");
                var dado = await DeserializarObjetosResponse<Root>(response);
                comics.Add(CriarComicVM(dado));
            }
            personagem.Comics = comics;
        }        
    }
}
