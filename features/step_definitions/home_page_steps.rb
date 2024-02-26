Dado('que estou na Home de Mercado') do
  @web_page = home_page
  @web_page.load
end

Então('o minicart devera estar com a quantidade de itens igual a {int}') do |int|
  @minicart = @web_page.mini_cart.text
  puts @minicart
end
