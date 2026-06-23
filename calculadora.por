programa
{
  funcao inicio()
  { 
real numero1, numero2, resultado = 0
		inteiro opcao = 1
		escreva("Escolha número 1 \n")
		leia(numero1)
		escreva("Escolha outro número \n")
		leia(numero2)
		escreva("Opção 1: soma \n Opção 2: subtração \n Opção 3: multiplicação \n Opção 4: divisão \n")
		leia(opcao)
		se ((numero2 == 0) e (opcao == 4))
		{
		escreva("\n Não é possível dividir por 0. Burro")
		}
			senao
			{
				escolha (opcao)
				{
				caso 1:
				resultado = numero1 + numero2
				pare
				caso 2:
				resultado = numero1 - numero2
				pare
				caso 3:
				resultado = numero1 * numero2
				pare
				caso 4:
				resultado = numero1 / numero2
				pare
				caso contrario: 
				escreva("\n Opção inválida! Deixe de ser burro.")
				}
			}
			se (opcao >= 1 e opcao <= 4)
			{
				escreva("\nResultado: ", resultado)
			}
	}
		
}
