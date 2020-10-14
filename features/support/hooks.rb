# Regex ou expressao regular
# contem => *
# termina com => $
# começa com => ^

include Capybara::DSL

After('@logout') do
    find('.navbar a[href*=dropdown]').click
    find('.navbar a[href$=logout]')
end
