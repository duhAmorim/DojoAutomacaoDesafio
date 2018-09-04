#language:pt

@Login

Funcionalidade: Realizo login com usuário padrao
                Eu como clinte quero realizar login
                para fazer comprar de passagens
                e receber o comprovante

Cenario: Realizar Login no site 
    Dado que esteja na tela de logim
    Quando preencher todos os campos
    Então o login deve ser realizado com sucesso 