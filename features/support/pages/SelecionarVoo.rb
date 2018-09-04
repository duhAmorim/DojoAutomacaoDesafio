class SelecaoVoo < SitePrism::Page

    element :vooIda, 'input[value*="Pangea Airlines$362$274$9:17"]'
    element :vooRetorno, 'input[value*="Unified Airlines$633$303$18:44"]'
    element :btnAvanca, 'input[name*="reserveFlights"]'
    

    def selecionarHorarios ()
        vooIda.click
        vooRetorno.click
        
    end

    def avancarVoo
        btnAvanca.click
    end
end