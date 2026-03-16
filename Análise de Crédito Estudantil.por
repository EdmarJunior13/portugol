programa {

  funcao inicio() {

    real media = -1, distancia
     
    // Loop caso o usuário informe um intervalo incorreto.
    enquanto(media < 0 ou media > 10)
    {
      escreva("Qual média final do aluno de 0 a 10?: ")
      leia(media)

      se(media < 0 ou media > 10) // Se o intervalo for inválido...
      {
        limpa() // Limpa as operações anteriores no console
        escreva("Intervalo incorreto!\nPrecione qualquer tecla para continuar...\n")
        leia("") // Espera o usuário digitar alguma tecla
        limpa() // Limpa tudo novamente
        // Recomeça o fluxo
      }
    }
    
    escreva("Qual a distância em km?: ")
    leia(distancia)

    se(media >= 7 e distancia > 5)
    {
      escreva("\nSolicitação de auxílio deferida. Verifique os prazos de recebimento.\n")
    }

    senao
    {
      escreva("\nSolicitação indeferida. O perfil não atende aos critérios mínimos de desempenho ou localização.\n")
    }
  }
}
