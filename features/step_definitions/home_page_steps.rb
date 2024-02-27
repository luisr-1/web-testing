Dado('que estou na Home de Mercado') do
  @web_page = HomePage.new
  @web_page.load
  @web_page.close_modal.click
end

Então('o minicart devera estar com a quantidade de itens igual a {int}') do |quantity|
  @minicart_quantity = @web_page.mini_cart.text.to_i
  expect(@minicart_quantity).to eq(quantity)
end
