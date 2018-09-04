class EscolherDestinoPassagem < SitePrism::Page

    element :type, 'input[value*="oneway"]'
    element :quantPassageiros, 'select[name*="passCount"]'
    
    element :partida, 'select[name*="fromPort"]'
    element :mesPartida, 'select[name*="fromMonth"]'
    element :diaPartida, 'select[name*="fromDay"]'
    element :destino, 'select[name*="toPort"]'
    element :mesRetorno, 'select[name*="toMonth"]'
    element :diaRetorno, 'select[name*="toDay"]'
    element :classeVoo, 'input[value*="Business"]'
    element :compania, 'select[name*="airline"]'
    element :btnContinue, 'input[name*="findFlights"]'


    def preencherCamposDestino ()
        type.click
        quantPassageiros.click
        quantPassageiros.select("2").click
        partida.select("London").click
        mesPartida.select("March").click
        diaPartida.select("3").click
        destino.select("Paris").click
        mesRetorno.select("June").click
        diaRetorno.select("10").click
        classeVoo.click
        compania.select("Pangea Airlines").click

        

    end

    def avancarDestino()
        btnContinue.click
    end
end