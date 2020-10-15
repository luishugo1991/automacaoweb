# Regex ou expressao regular
# contem => *
# termina com => $
# começa com => ^

include Capybara::DSL

Before('@login')do

 @usuario = {email: 'luis.hugo@live.com', senha:'123456'}

 LoginPage.new.acessa
 LoginPage.new.faz_login(@usuario[:email], @usuario[:senha])
 page.current_window.resize_to(1280, 800)
end
After('@logout') do
  Navbar.new.sair
end
