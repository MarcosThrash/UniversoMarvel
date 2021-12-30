using InformacoesMarvel.Servico;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InformacoesMarvel.Controllers
{
    public class MarvelComicsController : MainController
    {
        private readonly IMarvelService _servicoMarvel;

        public MarvelComicsController(IMarvelService servicoMarvel)
        {
            _servicoMarvel = servicoMarvel;
        }
        
        public async Task<IActionResult> Index()
        {
            var result = await _servicoMarvel.Comics();
            return View(result);
        }

        public async Task<IActionResult> IndexPersonagens()
        {
            var result = await _servicoMarvel.TotalPersonagens();
            ViewData["TotalPersonagens"] = result;
            return View();
        }

        public async Task<IActionResult> Personagens(int limit=70, int offset=1)
        {
            var result = await _servicoMarvel.Personagens(limit, offset);
            //ResponsePossuiErro(result);
            //if (!ResponsePossuiErro(result))
            //{
            //    ViewData["Title"] = result.ErrosReponse.Code;
            //    return Redirect("/Error");                
            //}
            return PartialView("_partialGridPersonagens", result.Values);
        }

        public async Task<IActionResult> Personagem(int id)
        {
            var result = await _servicoMarvel.Personagem(id);
            ResponsePossuiErro(result.ErrosReponse);
            return View(result.Value);
        }
    }
}
