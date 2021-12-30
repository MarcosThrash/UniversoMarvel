using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InformacoesMarvel.Models
{
    public class PersonagemVM
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string ImagemPath { get; set; }
        public string Descricao { get; set; }
        public List<ComicsVM> Comics { get; set; }

    }
}
