using InformacoesMarvel.Controllers;
using InformacoesMarvel.Models;
using InformacoesMarvel.Servico;
using InformacoesMarvel.Servico.ServicoMarvelModels;
using Microsoft.AspNetCore.Mvc;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace InformacoesMarvel.Testes.ControllerTestes
{
    public class ControllerMarvelTestes
    {
        private const int QT_RETORNADA = 20;

        [Fact]
        public async Task DeveRetornarListaPersonagens()
        {
            //Arrange
            var mockService = new Mock<IMarvelService>();
            mockService.Setup(serv => serv.Personagens(QT_RETORNADA, 1))
                .ReturnsAsync(ListaPersonagensVm(false));
            var controller = new MarvelComicsController(mockService.Object);

            //Act
            var result = controller.Personagens(QT_RETORNADA, 1);

            var objectResult = Assert.IsType<Task<IActionResult>>(result);
            //var model = Assert.IsAssignableFrom<List<ResponseResult<PersonagemVM>>>(objectResult.)

        }

        private ResponseResult<PersonagemVM> ListaPersonagensVm(bool listaVazia)
        {
            var lista = new List<PersonagemVM>();
            if (listaVazia)
            {
                for (int i = 0; i < QT_RETORNADA; i++)
                {
                    lista.Add(
                        new PersonagemVM { Id = i + 1, Nome = $"Personagem_{i}" }
                    );
                }
            }                        
            return new ResponseResult<PersonagemVM>(lista);
        }

    }

    

}
