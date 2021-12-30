using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace InformacoesMarvel.Extensions
{
    public class CustomRequestException : Exception
    {
        public HttpStatusCode StatusCode { get; set; }

        public CustomRequestException(){ }

        public CustomRequestException(HttpStatusCode statusCode)
        {
            StatusCode = statusCode;
        }
    }
}
