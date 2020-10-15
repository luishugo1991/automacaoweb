class Cadastro
    include Capybara::DSL

    def preencher(nome, email, senha)        
      fill_in 'register_name',	with: nome
      email = email + Faker::Lorem.characters(number: 4)
      fill_in "register_email",	with: email
      fill_in "register_password",	with: senha          
    end

    def faz_cadastro
      click_on "Cadastrar"
    end

    def alertmensagem
      find('#task-board')
    end

    def erromensagem
      find('.alert-message')
    end
end