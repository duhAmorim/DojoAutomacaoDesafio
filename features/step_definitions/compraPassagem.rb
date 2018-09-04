Dado("esteja na tela do sistema") do
    @AcessarPagina = AcessarPagina.new
    @AcessarPagina.load
  end
  
  Dado("que tenha tenha feito login com {string} e {string}") do |usuario, senha|
    @Login_page =LoginPage.new
    @Login_page.LoginDados(usuario,senha)
  end
  
  Dado("escolher o destino") do
    @EscolherDestino = EscolherDestinoPassagem.new
    @EscolherDestino.preencherCamposDestino
    
    @EscolherDestino.avancarDestino
    

  end
  
  Dado("escolher o horario de ida e volta") do
    @SelecionarVoo = SelecaoVoo.new
    @SelecionarVoo.selecionarHorarios
    
    @SelecionarVoo.avancarVoo
    
    
  end
  
  Quando("preencher os dados do passageiro e de pagamento") do
    @DadosPassageiro = Passageiro.new
    @DadosPassageiro.preencherDadosPassageiro
    
    @DadosPassageiro.finalizarCompra
    
    
  end
  
  Então("deve exibir tela de confirmacao") do
  
    
   
    if(has_css?('img[src="/images/masts/mast_confirmation.gif"]').to_s=="true")
        puts("Compra realizada com sucesso!")
    end  

  end