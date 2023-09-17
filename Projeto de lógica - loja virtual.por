programa {
		const real preteclado = 280.00	
		const real premouse = 100.00	
		const real preheadset = 280.00	
		const real prekit_completo = 216.00
		inteiro qtdteclado , qtdmouse , qtdheadset , qtdkit_completo
		real    totteclado , totmouse , totheadset , totkit_completo , total_geral
		inteiro qtdtotalteclado = 0
		inteiro qtdtotalmouse = 0
		inteiro qtdtotalheadset = 0
		inteiro qtdtotalkit_completo = 0
		inteiro opcao_menu = 0
		cadeia login, senha , name , pass
	funcao inicio() {
		inteiro opcao
		
		caracter imput
		cadeia avaliar,resposta
	    
		
		escreva("Bem-vindo à Micro office periféricos.\n \nVocê já tem cadastro?: ")
		leia(resposta)
		se(resposta=="Sim" ou resposta=="sim"){
		limpa()
    escreva("Qual o seu login?: ")
    leia(login)
    escreva("Qual a sua senha: ")
    leia(senha)
    limpa()
    menu()
    }
    senao se(resposta=="Não" ou resposta=="não" ou resposta=="nao" ou resposta=="Nao"){
    limpa()
    escreva("\nFaça o seu cadastro!\n \n")
    escreva("Cadastre o seu login: ")
    leia(login)
    escreva("Escolha a sua senha: ")
    leia(senha)
    limpa()
    log()
    }
    senao{
		  limpa()
		 escreva("Por favor digite \"Sim\" ou \"Não\" \n \n" )
		  inicio()
      }
  }
  funcao log(){
    escreva("Digite o seu login: ")
    leia(name)
    escreva("Digite a sua senha: ")
    leia(pass)
    se(pass!=senha ou name!=login){
      limpa()
      escreva("Login ou senha incorretos!\n \n")
        log()
    }
    senao se(pass==senha ou name==login){
      limpa()
      escreva("Parabéns! Cadastro realizado com sucesso!\n\n")
    }
		   
		menu()
		
	}
	
	funcao menu(){
		escreva("1) Fazer Compra\n")
		escreva("2) Preço \n")
		escreva("3) Meu carrinho\n")
		escreva("4) Sair \n")
		escreva("Escolha uma opção do Menu!: ")
		leia(opcao_menu)
		se (opcao_menu==1){
		    limpa()
			fazer_compras()
		}senao se(opcao_menu==2){
		    limpa()
			cadeia resposta =""
			escreva("1) Teclado Gamer R$ 280,00 \n")
			escreva("2) Mouse Gamer R$ 100,00 \n")
			escreva("3) Headset Gamer R$ 280,00 \n")
			escreva("4) Kit Gamer Completo R$ 216,00 \n")
			escreva("\nQuer Fazer compras?: ")
			leia(resposta)
			se(resposta=="sim" ou resposta== "Sim"){
			    limpa()
				fazer_compras()
			}senao{
			    limpa()
				menu()
			}
			
		}senao se(opcao_menu==3){
		    limpa()
			lista_compras()
		}senao se(opcao_menu==4){
		    limpa()
			sair_tudo()
		}
		senao se(opcao_menu>4 ou opcao_menu<1){
		    limpa()
		    escreva("Opção inválida!\n \n")
		    menu()
		}
	}
	
	
	funcao fazer_compras(){
		
	    inteiro opcao
	    
	    caracter imput
	    cadeia avaliar,resposta,nome_us,senha2,sair ,nome
	    
	    escreva("Vamos as compras!" +(login)+ ", Coloque no seu carrinho o produto que você deseja comprar, digitando código (apenas o número e um de cada vez): \n \n")
	    faca{
    	    escreva("1) Teclado Gamer  \n")
    	    escreva("2) Mouse Gamer  \n")
    	    escreva("3) Headset Gamer  \n")
    	    escreva("4) Kit Gamer Completo  \n")
    	    escreva("5) Sair \n ")
    	    escreva("\nEscolha uma opção: ")
    	    leia(opcao)
    	    limpa()
          se(opcao==1){
                  escreva("Teclado Gamer em sepração!\n \n")
                  escreva("Digite a quantidade de Teclado Gamer: ")
                  leia(qtdteclado)
                  qtdtotalteclado = qtdtotalteclado + qtdteclado
                  totteclado = qtdtotalteclado  * preteclado
                  escreva("Valor Total: R$ ",totteclado)
          }senao se(opcao==2){
                  escreva("Mouse Gamer em separação!\n")
                  escreva("Digite a quantidade de Mouse Gamer: ")
                  leia(qtdmouse)
                  qtdtotalmouse = qtdtotalmouse + qtdmouse
                  totmouse = qtdtotalmouse  * premouse
                  escreva("Valor Total: R$ ",totmouse)
          }senao se(opcao==3){
                  escreva("Headsete Gamer em separação!\n")
                  escreva("Digite a quantidade de Headset Gamer: ")
                  leia(qtdheadset)
                  qtdtotalheadset = qtdtotalheadset + qtdheadset
                  totheadset = qtdtotalheadset  * preheadset
                  escreva("Valor Total: R$ ",totheadset)   
          }senao se(opcao==4){
                  escreva("Kit Gamer completo em separação!\n")
                  escreva("Digite a quantidade de Kit Gamer Completo: ")
                  leia(qtdkit_completo)
                  qtdtotalkit_completo = qtdtotalkit_completo + qtdkit_completo
                  totkit_completo = qtdtotalkit_completo * prekit_completo
                  escreva("Valor Total: R$ ",totkit_completo)  
          }senao se(opcao==5){
              escreva("então sairemos da pagina, obrigado e volte sempre: !\n ")
              leia(sair)
          }
          totteclado = qtdtotalteclado  * preteclado
          totmouse  = qtdtotalmouse  * premouse
          totheadset = qtdtotalheadset  * preheadset
          totkit_completo = qtdtotalkit_completo * prekit_completo
          total_geral = totteclado+totmouse+totheadset+totkit_completo
	    }
    
    enquanto(opcao>4 ou opcao<1)
      cadeia dnv
      escreva("\n\nVoce vai querer mais alguma coisa?: ")
      leia(dnv)
      se(dnv=="Sim" ou dnv=="sim"){
          limpa()
          fazer_compras()
      }senao {
          limpa()
      	menu()
      }
    }
    
    
    funcao lista_compras(){
    		cadeia resposta 
		se(totteclado!=0){
		escreva("Teclado Gamer: R$ ",preteclado," quantidade: ",qtdtotalteclado,"\n")
		}se(totmouse!=0){
		escreva("Mouse Gamer: R$ ",premouse," quantidade: ",qtdtotalmouse,"\n")
		}se(totheadset!=0){
		escreva("Headset Gamer: R$ ",preheadset," quantidade: ",qtdtotalheadset,"\n")
		}se(totkit_completo!=0){
		escreva("\nKit Gamer Completo: R$ ",prekit_completo," quantidade: ",qtdtotalkit_completo,"\n")
		}
		escreva("o total geral: ",total_geral,"\n")
		escreva("\n Você deseja finalizar a compra?: ")
		leia(resposta)
		se (resposta=="sim" ou resposta=="Sim"){
			escreva("Compra efetuada com sucesso!\n")
			sair_tudo()
		}
		senao se(resposta=="Não" ou resposta=="não" ou resposta=="nao" ou resposta=="Nao"){
		    limpa()
			menu()
		}
		senao{
		    limpa()
		    escreva("Opção inválida!\n\n")
		    lista_compras()
		}
    }
    funcao sair_tudo(){
    	escreva("\n Muito Obrigado e volte e sempre!")
    }
}
