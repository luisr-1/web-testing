class HomePage < SitePrism::Page
  set_url URL

  element :close_modal, '#headlessui-dialog-panel-\:r1m\: > header > div > button'
  element :mini_cart, '#__next > header > div.w-full.bg-white.data-\[shadow\=true\]\:shadow-\[0_0_13px_-3px_rgba\(0\,0\,0\,\.75\)\] > nav > aside > button'
end
