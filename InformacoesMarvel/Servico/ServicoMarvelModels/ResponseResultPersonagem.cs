using InformacoesMarvel.Models;
using System.Collections.Generic;

namespace InformacoesMarvel.Servico.ServicoMarvelModels
{
    public class ResponseResultPersonagem
    {
        public List<PersonagemVM> PersonagensVM { get; set; }
        public PersonagemVM PersonagemVM { get; set; }
        public ErroResponse ErrosReponse { get; set; }

        public ResponseResultPersonagem(List<PersonagemVM> personagensVM)
        {
            PersonagensVM = personagensVM;           
        }

        public ResponseResultPersonagem(PersonagemVM personagemVM)
        {
            PersonagemVM = personagemVM;
        }

        public ResponseResultPersonagem(ErroResponse erroReponse)
        {         
            ErrosReponse = erroReponse;
        }

    }
}
