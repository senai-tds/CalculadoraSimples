programa {
  funcao inicio() {
    menu()
  }

  funcao esperarTeclarEnter(cadeia msg) {
    caracter c

    escreva(msg)
    escreva("\npressione <ENTER>")
    leia(c)
  }

  // variáveis de visibilidade global (dentro de toda a estrutura programa{})
  real n1, n2, resultado

  funcao lerNumeros() {
    escreva("\n  Digite um número: ")
    leia(n1)
    escreva("  Digite outro número: ")
    leia(n2)
  }

  funcao calcular(cadeia operacao) {
    se (operacao == "+") {
      resultado = n1 + n2
    }
  }

  funcao exibirResultado() {
    escreva("  Resultado: ", resultado, "\n")
    esperarTeclarEnter(" ")
  }

  funcao somar() {
    lerNumeros()
    calcular("+")
    exibirResultado()
  }

  funcao menu() {
    inteiro opcao = -1
    
    enquanto (opcao != 0) {
      limpa()
      escreva("### CALCULADORA SIMPLES ###\n\n")
      escreva("Escolha uma operacao:\n")
      escreva("  0. Encerrar aplicativo\n")
      escreva("  1. Somar\n")
      escreva("Opção: ")
      leia(opcao)
      
      se (opcao == 0) {
        // não faz nada
      } senao se (opcao == 1) {
        somar()
      } senao {
        esperarTeclarEnter("\nOpção inválida")
      }
    }
  }
}
