using InformacoesMarvel.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;

namespace InformacoesMarvel.Servico
{
    public abstract class Service
    {
        public bool TratarErrosResponse(HttpResponseMessage httpResponseMessage)
        {          
            switch ((int)httpResponseMessage.StatusCode)
            {
                case 401: //não autenticado
                case 403: //não autorizado
                case 404: //notfound recurso não encontrado
                case 500: //erro de servidor
                    throw new CustomRequestException(httpResponseMessage.StatusCode);

                case 400: //badrequest
                    return false;
            }

            httpResponseMessage.EnsureSuccessStatusCode();
            return true;            
        }

        public async Task<T> DeserializarObjetosResponse<T>(HttpResponseMessage responseMesnage)
        {
            var options = new JsonSerializerOptions { PropertyNameCaseInsensitive = true };
            return JsonSerializer.Deserialize<T>(await responseMesnage.Content.ReadAsStringAsync(), options);
        }
    }
}
