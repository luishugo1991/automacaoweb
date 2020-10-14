class LoginPage
    include Capybara::DSL

    def faz_login(email, senha)
        find('input[name=email]').set email
        find('input[name=password]').set senha
        click_button 'Login'
    end
end