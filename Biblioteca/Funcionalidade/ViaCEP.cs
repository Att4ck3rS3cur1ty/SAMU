﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Funcionalidade
{
    public class ViaCEP
    {
        private static HttpClient httpClient;

        private static void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("https://viacep.com.br/");
        }
        public static Entidade.Endereco ConsultarPorCep(string _cep)
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("ws/" + _cep + "/json/");
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var endereco = JsonConvert.DeserializeObject<Entidade.Endereco>(str);
                return endereco;
            }
            catch (AggregateException)
            {

                Entidade.Endereco endereco = new Entidade.Endereco();
                return endereco;
            }
            
        }
    }
}
