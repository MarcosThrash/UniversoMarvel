using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InformacoesMarvel.Servico.ServicoMarvelModels
{
    public class Item
    {
        public string ResourceURI { get; set; }
        public string Name { get; set; }
        public string Role { get; set; }
    }

    public class Creators
    {
        public int Available { get; set; }
        public string CollectionURI { get; set; }
        public List<Item> Items { get; set; }
        public int Returned { get; set; }
    }

    public class Characters
    {
        public int Available { get; set; }
        public string CollectionURI { get; set; }
        public List<Item> Items { get; set; }
        public int Returned { get; set; }
    }

    public class Series
    {
        public int Available { get; set; }
        public string CollectionURI { get; set; }
        public List<Item> Items { get; set; }
        public int Returned { get; set; }
    }

    public class Comics
    {
        public int Available { get; set; }
        public string CollectionURI { get; set; }
        public List<Item> Items { get; set; }
        public int Returned { get; set; }
    }

    public class Events
    {
        public int Available { get; set; }
        public string CollectionURI { get; set; }
        public List<Item> Items { get; set; }
        public int Returned { get; set; }
    }

    public class OriginalIssue
    {
        public string ResourceURI { get; set; }
        public string Name { get; set; }
    }

    public class TextObject
    {
        public string Type { get; set; }
        public string Language { get; set; }
        public string Text { get; set; }
    }

    public class Result
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public string ResourceURI { get; set; }
        public Stories Stories { get; set; }
        public string Description { get; set; }
        public List<TextObject> TextObjects { get; set; }
        public int PageCount { get; set; }
        public string Type { get; set; }
        public string Modified { get; set; }
        public Thumbnail Thumbnail { get; set; }
        public List<Url> Urls { get; set; }
        public Creators Creators { get; set; }
        public Characters Characters { get; set; }
        public Series Series { get; set; }
        public Comics Comics { get; set; }
        public Events Events { get; set; }
        public OriginalIssue OriginalIssue { get; set; }
    }

    public class Data
    {
        public int Offset { get; set; }
        public int Limit { get; set; }
        public int Total { get; set; }
        public int Count { get; set; }
        public List<Result> Results { get; set; }
    }

    public class Url
    {
        public string Type { get; set; }
        public string Uri { get; set; }
    }

    public class Thumbnail
    {
        public string Path { get; set; }
        public string Extension { get; set; }
        public string PathCompleto { get; }

        public Thumbnail()
        {
            PathCompleto = $"{Path}{Extension}";
        }        
    }
       
    public class Stories
    {
        public int Available { get; set; }
        public int Returned { get; set; }
        public string CollectionURI { get; set; }
        public List<Item> Items { get; set; }
    }

    public class Parametros
    {
        public string Offset { get; set; }
        public string Limit { get; set; }
        public string Autorizacao { get; set; }
    }

}
