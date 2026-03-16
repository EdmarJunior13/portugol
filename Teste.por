programa {

  inclua biblioteca Tipos --> t
  inclua biblioteca Texto --> tt

  real media, distancia, resposta[2]
  cadeia entrada, origem
  caracter op


  funcao inicio() {
    /* Solicitar média final do aluno [0-10]
    * Solicitar distância da moradia do aluno (km)
    * Auxilio apenas se ( média >= a 7.0 e distancia > 5)
    * Se verdadeiro {"Solicitação de auxílio deferida. Verifique os prazos de recebimento."}
    * Senao {"Solicitação indeferida. O perfil não atende aos critérios mínimos de desempenho ou localização."}
    */ 

    resposta = media()
    media = resposta[0]
    distancia = resposta[1]
    
    se(media >= 7 e distancia > 5)
    {
      escreva("\nSolicitação de auxílio deferida. \nVerifique os prazos de recebimento.\n")
    }

    senao
    {
      escreva("\nSolicitação indeferida. \nO perfil não atende aos critérios mínimos de desempenho ou localização.\n")
    }

  }

  funcao real media()
    {
      escreva("Informe a média final do aluno: ")
      leia(entrada)

      media = entradaUsuario(entrada, "media")

      se(media >= 0 e media <= 10)
      {
        distancia()
      }

      senao
      {
        limpa()
        escreva("Informe um intervalo válido!\n")
        media()
      }
      

      
      resposta[0] = media
      resposta[1] = distancia
      
      retorne resposta
    }

    funcao real distancia()
    {

      escreva("Informe a distância em km: ")
      leia(entrada)
      distancia = entradaUsuario(entrada, "distancia")
      retorne distancia
    }

    funcao real entradaUsuario(cadeia entrada, cadeia origem)
    {
      
      entrada = tt.substituir(entrada, ",", ".")
      
      se(t.cadeia_e_real(entrada) ou t.cadeia_e_inteiro(entrada,10))
      {
        retorne t.cadeia_para_real(entrada)
      }

      senao
      {
        limpa()
        escreva("Por favor utilize somente números!\n")
        
        escolha(origem)
        {
          caso "media":
            media()
            retorne 0
            pare

          caso "distancia":
            distancia()

            retorne 0
            pare

          caso contrario:
            escreva("Erro! Parâmetros da função 'entradaUsuario' incorretos!")
            retorne 0
        }
      }
      
    }

}
