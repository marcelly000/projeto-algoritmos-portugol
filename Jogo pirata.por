programa
{
inclua biblioteca Util --> u

funcao inicio()
{
	inteiro vidajogador = 150
	inteiro vidapirata = 150
	inteiro rodada = 1

	inteiro spray = 2
	inteiro bomba = 3
	inteiro pocaoenergetica = 1
	inteiro adaga = 5

	inteiro opcao, item
	inteiro dado
	inteiro dano
	inteiro ataquepirata = 1, bonusdesvio = 0
	inteiro danoPirata = 1, bonusdefesa = 0


	escreva(" PIRATAS DO CARIBE: A FUGA\n")
	escreva("Proteja sua pesquisa dos piratas!\n")

	enquanto (vidajogador > 0 e vidapirata > 0)
	{
		u.aguarde(1567)
		escreva("RODADA ", rodada, "\n")
		escreva("Sua vida: ", vidajogador, "\n")
		escreva("Vida do pirata: ", vidapirata, "\n")

		escreva("\n1 - Atacar")
		escreva("\n2 - Defender")
		escreva("\n3 - Desviar")
		escreva("\n4 - Usar Mochila")
		escreva("\nOpcao: ")
		leia(opcao)

		escolha(opcao)
		{
			caso 1:

				escreva("\nVoce rolou o dado...")
				u.aguarde(1000)

				dado = u.sorteia(1,6)

				escreva("\nResultado: ", dado, "\n")

				escolha(dado)
				{
					caso 1:
						escreva("FALHA CRITICA!\n")
						escreva("Voce se machucou!\n")
						vidajogador = vidajogador - 5
						pare

					caso 2:
						escreva("Falha! O ataque errou.\n")
						pare

					caso 6:
						escreva("SUCESSO CRITICO!\n")
						dano = 35
						vidapirata = vidapirata - dano
						escreva("Dano causado: ", dano, "\n")
						pare

					caso contrario:
						escreva("Sucesso!\n")
						dano = 20
						vidapirata = vidapirata - dano
						escreva("Dano causado: ", dano, "\n")
				}
				pare

			caso 2:

				escreva("\nVoce se defendeu!\n")

				bonusdefesa = 15

				escreva("Dano reduzido em 20")

				pare

			caso 3:

				escreva("\nVoce tentou desviar...\n")

				dado = u.sorteia(1,6)

				escreva("Resultado: ", dado, "\n")

				escolha(dado)
				{
					caso 1:
						escreva("FALHA CRITICA!\n")
						escreva("Voce tropeçou!\n")
						bonusdesvio = -10
						pare

					caso 2:
						escreva("Falha!\n")
						bonusdesvio = 0
						pare

					caso 6:
						escreva("SUCESSO CRITICO!\n")
						escreva("Voce desviou perfeitamente!\n")
						bonusdesvio = 15
						pare

					caso contrario:
						escreva("Sucesso! Voce desviou.\n")
				}
				pare

			caso 4:

				escreva("\nMOCHILA\n")
				escreva("1 - Spray de Gengibre (", spray, ")\n")
				escreva("2 - Adaga (", adaga, ")\n")
				escreva("3 - Pocao Energetica (", pocaoenergetica, ")\n")
				escreva("4 - Bomba de Fumaca (", bomba, ")\n")
				escreva("Escolha um item: ")
				leia(item)

				escolha(item)
				{
				caso 1:

						se (spray > 0)
						{
							spray--

							dado = u.sorteia(1,6)

							escreva("Resultado do dado: ", dado, "\n")

							escolha(dado)
							{
								caso 1:
									escreva("FALHA CRITICA!\n")
									escreva("O spray voltou em voce!\n")
									pare

								caso 2:
									escreva("Falha! O spray errou.\n")
									pare

								caso 6:
									escreva("SUCESSO CRITICO!\n")
									vidapirata = vidapirata - 20
									escreva("O pirata ficou muito debilitado!\n")
									pare

								caso contrario:
									escreva("Sucesso! O spray acertou.\n")
									vidapirata = vidapirata - 15
							}
						}
						senao
						{
							escreva("Item esgotado!\n")
						}
						pare
				caso 2:

						se (adaga > 0)
						{
						adaga--

						dado = u.sorteia(1,6)

						escreva("Resultado do dado: ", dado, "\n")
		
						escolha(dado)
						{
						caso 1:
						escreva("FALHA CRITICA!\n")
						escreva("Voce se cortou com a adaga!\n")
						vidajogador = vidajogador - 5
						pare

						caso 2:
						escreva("Falha! O golpe errou.\n")
						pare

						caso 6:
						dano = 40
						vidapirata = vidapirata - dano

						escreva("SUCESSO CRITICO!\n")
						escreva("Dano causado: ", dano, "\n")
						pare

						caso contrario:
						dano = 30
						vidapirata = vidapirata - dano
		
						escreva("Sucesso!\n")
						escreva("Dano causado: ", dano, "\n")
						}
						}
						senao
						{
						escreva("Voce nao possui mais adagas!\n")
						}
						pare



				caso 3:

						se (pocaoenergetica > 0)
						{
							pocaoenergetica--

							dado = u.sorteia(1,6)

							escreva("Resultado do dado: ", dado, "\n")

							escolha(dado)
							{
								caso 1:
									escreva("FALHA CRITICA! A pocao caiu no mar.\n")
									pare

								caso 2:
									escreva("Falha! A pocao estragou.\n")
									pare

								caso 6:
									vidajogador = vidajogador + 70
									escreva("SUCESSO CRITICO! +70 HP\n")
									pare

								caso contrario:
									vidajogador = vidajogador + 50
									escreva("Sucesso! +50 HP\n")
							}

							se (vidajogador > 100)
							{
								vidajogador = 100
							}
						}
						senao
						{
							escreva("Item esgotado!\n")
						}
						pare

				caso 4:

						se (bomba > 0)
						{
							bomba--

							dado = u.sorteia(1,6)

							escreva("Resultado do dado: ", dado, "\n")

							escolha(dado)
							{
								caso 1:
									escreva("FALHA CRITICA! A bomba caiu na agua.\n")
									pare

								caso 2:
									escreva("Falha! A bomba nao funcionou.\n")
									pare

								caso 6:
									escreva("SUCESSO CRITICO!\n")
									vidapirata = vidapirata - 25
									escreva("A explosao atingiu o pirata!\n")
									pare

								caso contrario:
									escreva("Sucesso! O pirata ficou confuso.\n")
									vidapirata = vidapirata - 15
							}
						}
						senao
						{
							escreva("Item esgotado!\n")
						}
						pare

					caso contrario:
						escreva("Item invalido!\n")
				}
				pare

			caso contrario:
				escreva("Opcao invalida!\n")
		}

		se (vidapirata > 0)
		{
			danoPirata = u.sorteia(1,4)
			u.aguarde(1000)
			

			escolha(danoPirata)
			{
				caso 1:
					ataquepirata = 10 - bonusdesvio - bonusdefesa
					escreva("\nO pirata atacou com uma espada!\n")
					pare

				caso 2:
					ataquepirata = 15 - bonusdesvio - bonusdefesa
					escreva("\nO pirata atirou com uma pistola!\n")
					pare

				caso 3:
					ataquepirata = 20 - bonusdesvio - bonusdefesa
					escreva("\nO pirata atacou com um gancho!\n")
				caso 4:
					ataquepirata = 35 - bonusdesvio - bonusdefesa
					escreva("\nO pirata atacou com dano critico!\n")
				
			}
			u.aguarde(1000)
			vidajogador = vidajogador - ataquepirata

			escreva("Voce sofreu ", ataquepirata, " de dano.\n")
		}

		rodada++
	}

	

	se (vidapirata <= 0)
	{
		escreva("VITORIA!\n")
		escreva("Voce derrotou os piratas e protegeu sua pesquisa!\n")
	}
	senao
	{
		escreva("GAME OVER!\n")
		escreva("Os piratas roubaram sua pesquisa.\n")
	}
}

}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1563; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */