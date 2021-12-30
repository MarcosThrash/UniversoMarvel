using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InformacoesMarvel.Extensions
{
    public class ExceptionMiddleware
    {
        private readonly RequestDelegate _next;

        public ExceptionMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext httpContext)
        {
            try
            {
                await _next(httpContext);
            }
            catch (CustomRequestException ex)
            {

                HandleRequestExceptionAsync(httpContext, ex);
            }            
        }

        private void HandleRequestExceptionAsync(HttpContext httpContext, CustomRequestException ex)
        {
            httpContext.Response.StatusCode = (int)ex.StatusCode;
        }
    }
}
