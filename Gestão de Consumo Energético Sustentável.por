programa {
  funcao inicio() {

    caracter tipo_consumidor
    real qtd_consumo, valor_bruto, valor_liquido, taxa
    escreva("Informe o tipo de consumidor, sendo:\n[R] para residencial.\n[C] para comercial.\nTipo de Consumidor: ")
    leia(tipo_consumidor)

    // Tratar erro de digitação simples
    se(tipo_consumidor == 'r')
    {
      tipo_consumidor = 'R'
    }

    se(tipo_consumidor == 'c')
    {
      tipo_consumidor = 'C'
    }

    se(tipo_consumidor == 'R' ou tipo_consumidor== 'C')
    {
      escreva("\nInforme a quantidade de quilowatts-hora (kWh) consumidos no mês: ")
      leia(qtd_consumo)

      escreva("\n--------------FATURA--------------\n")
      escolha(tipo_consumidor)
      {
        // Caso consumidor for do tipo 'Residencial'
        caso 'R':
          se(qtd_consumo <= 150)
          {
            valor_bruto = qtd_consumo * 0.5
            taxa = 0

            valor_liquido = valor_bruto + taxa
            escreva("O valor da fatura é: R$ ", valor_liquido)
            escreva("\nValor bruto: R$ ", valor_bruto)
            escreva("\nValor unitário: R$ 0,50")
            escreva("\nTaxa de sobrecarga: R$ ", taxa)

            // Utilizei mais de uma função escreva
            // para ficar mais claro o código, ao invés de usar '\n'
          }

          senao 
          {
            valor_bruto = qtd_consumo * 0.7
            taxa = 20

            valor_liquido = valor_bruto + taxa
            escreva("O valor da fatura é: R$ ", valor_liquido)
            escreva("\nValor bruto: R$ ", valor_bruto)
            escreva("\nValor unitário: R$ 0,70")
            escreva("\nTaxa de sobrecarga: R$ ", taxa)
          }
          pare

      // Caso consumidor for do tipo 'Comercial'
        caso 'C':
          se(qtd_consumo <= 500)
          {
            valor_bruto = qtd_consumo * 0.6
            taxa = 0

            valor_liquido = valor_bruto + taxa
            escreva("O valor da fatura é: R$ ", valor_liquido)
            escreva("\nValor bruto: R$ ", valor_bruto)
            escreva("\nValor unitário: R$ 0,60")
            escreva("\nValor da taxa de demanda: R$ ", taxa)
            escreva("\nPorcentagem da taxa de demanda: 0%")
          }

          senao
          {
            valor_bruto = qtd_consumo * 0.85
            taxa = valor_bruto * 0.1

            valor_liquido = valor_bruto + taxa
            
            escreva("O valor da fatura é: R$ ", valor_liquido)
            escreva("\nValor bruto: R$ ", valor_bruto)
            escreva("\nValor unitário: R$ 0,85")
            escreva("\nValor da taxa de demanda: R$ ", taxa)
            escreva("\nPorcentagem da taxa de demanda: 10%")
          }
          pare
      }

    }

    senao
    {
      limpa()
      escreva("Erro: Categoria de consumidor inexistente.\n\n")
      inicio()
    }
    
    escreva("\n--------------FIM--------------\n")
  }
}
