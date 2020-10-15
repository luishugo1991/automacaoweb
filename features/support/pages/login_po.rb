
class LoginPage
    include Capybara::DSL

    def acessa
        visit '/login'
    end

    def cadastro
      visit '/register'
    end

    def faz_login(email, senha)
      find('input[name=email]').set email
      find('input[name=password]').set senha
        click_button 'Login'
    end

    def alerta
      find('.alert-login')
    end
end