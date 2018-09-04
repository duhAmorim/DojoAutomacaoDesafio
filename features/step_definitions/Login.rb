Dado("que esteja na tela de logim") do
    @AcessarPagina = AcessarPagina.new
    @AcessarPagina.load
    sleep 10

  end
  
  Quando("preencher todos os campos") do
    @Login_page =LoginPage.new
    @Login_page.LoginDados('qasampa','qasampa123')
    sleep 5
  end
  
  Então("o login deve ser realizado com sucesso") do
    pending # Write code here that turns the phrase above into concrete actions
  end