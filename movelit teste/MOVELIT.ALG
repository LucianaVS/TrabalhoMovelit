Algoritmo "MOVELIT"
// Descrição   : CADASTRO
// Autor(a)    : LUCIANA VIEIRA DA SILVA
// Data atual  : 10/07/2022

tipo

    cad_pessoa = registro

     nome:caracter
     endereco:caracter
     destino:caracter
     data:caracter
     dados_cartao:caracter
     cpf:caracter
     fone:inteiro
     i:inteiro
     total:real
     entrada:real

fimregistro


var

 pessoa : vetor[1..5] de cad_pessoa

 pg,opcao,i,op:inteiro
 entrada,total:real
 totalPessoas:inteiro
  quantCad:inteiro


inicio

totalPessoas <- 5
quantCad <- 0

escreval("===================* SEJA BEM VINDO*=========================")
ESCREVAL("")
ESCREVAL("================================================================")
ESCREVAL("                      * REALIZE SEU CADASTRO*                   ")
ESCREVAL("================================================================")

para i de 1 ate totalPessoas faca
       quantCad <- quantCad + 1
       fimpara

ESCREVA("Informe seu Nome:")
LEIA(pessoa[i].nome)
                    se(pessoa[i].nome = "") entao
                     quantCad <- quantCad - 1
           interrompa
       fimse

ESCREVA("Informe seu Cpf:")
LEIA(pessoa[i].cpf)
ESCREVA("Informe seu Endereco:")
LEIA(pessoa[i].endereco)
ESCREVA("Informe seu telefone:")
LEIA(pessoa[i].fone)
ESCREVA("Qual seu destino?")
LEIA(pessoa[i].destino)

 se(pessoa[i].destino <> opcao) entao
   escreval("Destino esgotado")
   interrompa

ESCREVA("")
senao

ESCREVA("Qual a data da viagem? ")
LEIA(pessoa[i].data)
fimse

//MENUS DOS SERVIÇOS

opcao <- 0
enquanto opcao <>7 faca
ESCREVAL("======================*OPÇÕES DE PACOTES*=======================")
ESCREVAL("")
ESCREVAL("1--------------------:RIO DE JANEIRO ")
ESCREVAL("2--------------------:CAMPOS " )
ESCREVAL("3--------------------:BÚZIOS ")
ESCREVAL("4--------------------:PACOTES ESPECIAIS - SOB CONSULTA")
ESCREVAL("5--------------------:TOTAL DOS SERVICOS ")
ESCREVAL("6--------------------:FORMAS DE PAGAMENTO")
ESCREVAL("Digite um numero do serviço desejado ou digite 7 para sair")
leia(opcao)

se (opcao<1) ou (opcao >7) entao
	Escreval ("POR FAVOR DIGITE UMA OPCAO VALIDA:")
	entrada <-0
senao
  se (opcao=1) entao
	escreval("RIO DE JANEIRO 2 PESSOAS + HOSPEDAGEM R$ 5.000")
	entrada <- 5.000
  fimse

 	se (opcao=2) entao
 	escreval("CAMPOS 2 PESSOAS +HOSPEDAGEM  R$ 7.000")
   entrada <- 7.000
   fimse

   se (opcao=3) entao
   escreval("BÚZIOS 2 PESSOAS +  HOSPEDAGEM  R$ 8.000")
	entrada <- 8.000
   fimse

  	se (opcao=4) entao
  	escreval(" PACOTES ESPECIAIS - SOB CONSULTA")

   ESCREVAL ("LISTAGEM DE VIAGENS")
   fimse
   se(opcao=5) entao

    entrada <-0

    total <-  total + entrada
   ESCREVAL("======================*RECIBO*===========================")
   escreval("TOTAL DOS SERVICOS R$", total)

   escreval("")
   escreval("    ---------Relatorio----------    ")
   escreval (" Nome:" + pessoa[i].nome)

    escreval("")
    fimse

    se(opcao=6) entao
    op <- 8

enquanto op<>8 faca
ESCREVAL("======================*FORMA DE PAGAMENTO*================")
Escreval("DIGITE 1) PARA PIX -- 2) CARTAO DE CREDITO.")
Escreval ("ESCOLHA A OPCAO")
leia(pg)
        se pg=1 entao
           escreval("NOSSA CHAVE PIX 54321 - OBRIGADA!!!")
        senao
        se pg=2 entao
           escreval("DIGITE OS DADOS DO CARTAO.")
           leia(dados_cartao)

           ESCREVAL ("DADOS DO CARTAO: " + dados_cartao )
        fimse
       fimse
       escreval ("DIGITE '8' PARA VOLTAR")
   fimenquanto


      se (opcao=7) entao
     escreval ("")
     escreval("Pagamento Aprovado - Pedido Finalizado - OBRIGADA, VOLTE SEMPRE!!!")
     interrompa



     fimse
FIMSE


Fimalgoritmo

