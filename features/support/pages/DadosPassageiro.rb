class Passageiro < SitePrism::Page
    #dados dos passeiros 
    element :primeiroNome1, 'input[name*="passFirst0"]'
    element :ultimoNome1, 'input[name*="passLast0"]'
    element :primeiroNome2, 'input[name*="passFirst1"]'
    element :ultimoNome2, 'input[name*="passLast1"]'
    element :meal1, 'select[name*="pass.0.meal"]'
    element :meal2, 'select[name*="pass.1.meal"]'

    #cartão de credito
    element :bandeiraCartao, 'select[name*="creditCard"]'
    element :numeroCartao, 'input[name*="creditnumber"]'
    element :validadeMes, 'select[name*="cc_exp_dt_mn"]'
    element :validadeAno, 'select[name*="cc_exp_dt_yr"]'
    element :primeiroNomeCartao, 'input[name*="cc_frst_name"]'
    element :segundoNomeCartao, 'input[name*="cc_mid_name"]'
    element :terceiroNomeCartao, 'input[name*="cc_last_name"]'

    #botão 
    element :btnFinalizar, 'input[name*="buyFlights"]'
    

    def preencherDadosPassageiro ()
       primeiroNome1.set 'Edu'
       ultimoNome1.set 'Amorim'
       primeiroNome2.set 'Maria'
       ultimoNome2.set 'Souza'
       meal1.select("Vegetarian").click
       meal2.select("Hindu").click

       bandeiraCartao.select("Visa").click
       numeroCartao.set '1111222233334444'
       validadeMes.select("10").click
       validadeAno.select("2009").click
       primeiroNomeCartao.set 'Eduardo'
       segundoNomeCartao.set 'Santos'
       terceiroNomeCartao.set 'Amorim'
        
    end

    def finalizarCompra ()
        btnFinalizar.click
    end
end