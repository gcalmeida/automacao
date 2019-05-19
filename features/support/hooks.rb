# REGEX ou Expressão Regular
# Contem => *
# termina com => $
# começa com => ^

Before do
  @home_page = HomePage.new
  @search_ticket_page = SearchTicketPage.new
  @checkout_page = CheckoutPage.new
  @confirmation_page = ConfirmationPage.new

  page.current_window.resize_to(1440, 900)
end

After do |scenario|
  nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome = nome.tr(' ', '_').downcase!
  shot = "log/screenshots/#{nome}.png"

  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Ta aqui o print')
end
