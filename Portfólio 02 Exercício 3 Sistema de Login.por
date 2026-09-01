programa
{
	funcao inicio()
	{
		cadeia senhaCorreta = "senha123"
		cadeia senhaDigitada = ""

		enquanto (senhaDigitada != senhaCorreta)
		{
			escreva("Digite a senha: ")
			leia(senhaDigitada)

			se (senhaDigitada != senhaCorreta)
			{
				escreva("\nSenha incorreta, tente novamente.\n\n")
			}
		}

		escreva("\nAcesso Liberado! Bem-vindo!")
	}
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */