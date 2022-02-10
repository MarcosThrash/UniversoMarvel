using InformacoesMarvel.Models;
using InformacoesMarvel.Servico.ServicoMarvelModels;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InformacoesMarvel.Controllers
{
    public class MainController : Controller
    {
        //Erros de Response exibidos através de ModelState
        protected bool VerificaErrosNoResponse(ErroResponse erro)
        {
            if (erro != null)
            {
                ModelState.AddModelError(string.Empty, erro.Code);
                return true;
            }
            return false;
        }

        
    }
}
