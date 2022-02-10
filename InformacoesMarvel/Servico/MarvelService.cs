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
            var response = await _httpClient.GetAsync($"/v1/public/comics/{id}?{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<ComicsVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);

            var comic = new ResponseResult<ComicsVM>(CriarComicVM(dados));

            var listaDePersonagens = await ComicsPersonagens(comic.Value.Id);

            comic.Value.Personagens = listaDePersonagens.Values;

            return comic;
        }

        public async Task<ResponseResult<ComicsVM>> Comics(int limit, int offset)
        {            
            var response = await _httpClient.GetAsync($"/v1/public/comics{Paginacao(limit, offset)}{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<ComicsVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);

            return new ResponseResult<ComicsVM>(CriaListaComicsVM(dados));
        }

        public async Task<ResponseResult<PersonagemVM>> ComicsPersonagens(int idComic)
        {
            var response = await _httpClient.GetAsync($"/v1/public/comics/{idComic}/characters?{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<PersonagemVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);
            return new ResponseResult<PersonagemVM>(CriaListaPersonagemVM(dados));
        }

        public async Task<ResponseResult<PersonagemVM>> Personagem(int id)
        {
            var response = await _httpClient.GetAsync($"/v1/public/characters/{id}?{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<PersonagemVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);
            
            var resultado = new ResponseResult<PersonagemVM>(CriarPersonagemVM(dados));

            var listaDeComics = await PersonagensComics(resultado.Value.Id);

            resultado.Value.Comics = listaDeComics.Values;

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

        public async Task<ResponseResult<ComicsVM>> PersonagensComics(int idPersonagem)
        {
            var response = await _httpClient.GetAsync($"/v1/public/characters/{idPersonagem}/comics?{GerarAutenticacao(_settings)}");

            if (!TratarErrosResponse(response))
                return new ResponseResult<ComicsVM>(await DeserializarObjetosResponse<ErroResponse>(response));

            var dados = await DeserializarObjetosResponse<Root>(response);

            return new ResponseResult<ComicsVM>(CriaListaComicsVM(dados));
        }

        public async Task<int> TotalPersonagens()
        {
            var response = await _httpClient.GetAsync($"/v1/public/characters{Paginacao(1, 1)}{GerarAutenticacao(_settings)}");
            var dados = await DeserializarObjetosResponse<Root>(response);
            return dados.Data.Total;
        }
         
    }
}
