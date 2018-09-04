#language:pt

@compraPassagem
Funcionalidade: Compra de passagens 


Contexto:

Dado esteja na tela do sistema

Esquema do Cenario: esteja fazendo a compra das passagens 
E que tenha tenha feito login com "<usuario>" e "<senha>"
E escolher o destino  
E escolher o horario de ida e volta
Quando preencher os dados do passageiro e de pagamento
Então deve exibir tela de confirmacao


Exemplos:
    | usuario | senha      |
    | qasampa | qasampa123 |
    
