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
        // executar método somar
      } senao {
        esperarTeclarEnter("\nOpção inválida")
      }
    }
  }
}
