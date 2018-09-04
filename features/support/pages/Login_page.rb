class LoginPage < SitePrism::Page

    element :campoUsuario, 'input[name*="userName"]'
    element :campoSenha, 'input[name*="password"]'
    element :botaoLogar, 'input[name*="login"]'

    def LoginDados (usuario,senha)
        campoUsuario.set usuario
        campoSenha.set senha
        botaoLogar.click

    end
end