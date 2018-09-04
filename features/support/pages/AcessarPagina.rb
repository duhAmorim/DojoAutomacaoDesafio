# A classe AcessarPagina serve para acessar a pagina
class AcessarPagina < SitePrism::Page
    # abaixo com a url padrao
    set_url 'http://newtours.demoaut.com/index.php'
    puts 'Site acessado com sucesso'
  end
  