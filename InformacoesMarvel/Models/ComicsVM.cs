using System.Collections.Generic;

namespace InformacoesMarvel.Models
{
    public class ComicsVM
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public List<string> Criadores { get; set; }
        public List<PersonagemVM> Personagens { get; set; }
        public string ImagemPath { get; set; }
        public int QuantidadeDePaginas { get; set; }
        public List<string> Descricao { get; set; }
        public string ResourceURI { get; set; }
    }
}
