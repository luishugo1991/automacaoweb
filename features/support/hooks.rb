# Regex ou expressao regular
# contem => *
# termina com => $
# começa com => ^

include Capybara::DSL

After('@logout') do
  Navbar.new.sair
end
