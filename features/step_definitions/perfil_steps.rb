    Dado('que esteja autenticado com {string} e {string}') do |email, senha|
      LoginPage.new.acessa
      LoginPage.new.faz_login(email, senha)
    end

    Dado('que esteja em Perfil') do
      Sidebar.new.acessa_perfil
    end

    Quando('completar o cadastro com {string} e {string}') do |empresa, cargo|
      PerfilPage.new.completa_cadastro(empresa, cargo)
    end

    Então('deverá ver a mensagem de atualização cadastral:') do |mensagem|
      expect(PerfilPage.new.alerta).to have_content mensagem
    end