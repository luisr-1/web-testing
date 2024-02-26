class HomePage < SitePrism::Page
  set_url URL

  element :mini_cart, :xpath, '//*[@id="__next"]/header/div[2]/nav/aside/button'
end
