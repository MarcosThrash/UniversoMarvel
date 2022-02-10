using InformacoesMarvel.Extensions;
using InformacoesMarvel.Models;
using InformacoesMarvel.Servico.ServicoMarvelModels;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace InformacoesMarvel.Servico
{
    public abstract class MarvelServiceBase : Service
    {                       
        protected string GerarAutenticacao(IOptions<AppSettings> settings)
        {
            var md5 = MD5.Create();
            var data = DateTime.Now.ToShortDateString();
            var dadosACriptografar = $"{data}{settings.Value.MarvelChavePrivada}{settings.Value.MarvelChavePublica}";
            var inputBytes = System.Text.Encoding.ASCII.GetBytes(dadosACriptografar);            
            var hashBytes = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hashBytes.Length; i++)
            {
                sb.Append(hashBytes[i].ToString("X2"));
            }
            return $"ts={data}&apikey={settings.Value.MarvelChavePublica}&hash={sb.ToString().ToLower()}";
        }

        protected List<ComicsVM> CriaListaComicsVM(Root dados)
        {
            var comicsVm = new List<ComicsVM>();
            foreach (var item in dados.Data.Results)
            {
                comicsVm.Add(
                    new ComicsVM
                    {
                        Id = item.Id,
                        Titulo = item.Title,
                        Criadores = item.Creators.Items.Select(c => $"{c.Name}, ").ToList(),
                        ImagemPath = $"{item.Thumbnail.Path}.{item.Thumbnail.Extension}",
                        QuantidadeDePaginas = item.PageCount,
                        Descricao = item.TextObjects.Select(t => $"{t.Text}. ").ToList()
                    }
                );
            }
            return comicsVm;
        }

        protected ComicsVM CriarComicVM(Root dados)
        {
            var comicsVm = new ComicsVM();
            foreach (var item in dados.Data.Results)
            {
                comicsVm.Id = item.Id;
                comicsVm.Titulo = item.Title;
                comicsVm.Criadores = item.Creators.Items.Select(c => $"{c.Name}, ").ToList();
                comicsVm.ImagemPath = $"{item.Thumbnail.Path}.{item.Thumbnail.Extension}";
                comicsVm.QuantidadeDePaginas = item.PageCount;
                comicsVm.Descricao = item.TextObjects.Select(t => $"{t.Text}. ").ToList();                                  
            }
            return comicsVm;
        }

        protected List<PersonagemVM> CriaListaPersonagemVM(Root dados)
        {
            var comicsVm = new List<PersonagemVM>();
            foreach (var item in dados.Data.Results)
            {
                comicsVm.Add(
                    new PersonagemVM
                    {
                        Id = item.Id,
                        Nome = item.Name,
                        Descricao = item.Description,
                        ImagemPath = item.Thumbnail.Path + "." + item.Thumbnail.Extension
                    }
                );
            }
            return comicsVm;
        }

        protected PersonagemVM CriarPersonagemVM(Root dados)
        {
            var personagem = new PersonagemVM();
            foreach (var item in dados.Data.Results)
            {
                personagem.Id = item.Id;
                personagem.Nome = item.Name;
                personagem.Descricao = item.Description;
                personagem.ImagemPath = item.Thumbnail.Path + "." + item.Thumbnail.Extension;                                  
            }

            var comics = dados.Data.Results.FirstOrDefault().Comics.Items;
            personagem.Comics = new List<ComicsVM>();
            foreach (var item in comics)
            {
                personagem.Comics.Add(
                    new ComicsVM
                    {
                        Titulo = item.Name,
                        ResourceURI = item.ResourceURI
                    }
                );                
            }

            return personagem;
        }

        protected string Paginacao(int limit, int offset)
        {
            return $"?limit={limit}&offset={offset}&";
        }
    }
}
