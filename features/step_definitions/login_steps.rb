  Dado('que esteja na Home') do
    LoginPage.new.acessa
  end

  Quando('fazer o login com {string} e senha {string}') do |email, senha|
    LoginPage.new.faz_login(email, senha)
  end

  Então('deverá ver a mensagem de boas vindas {string}') do |mensagem|
    expect(TarefasPage.new.painel).to have_content mensagem
  end

  Então('deverá ver a mensagem de alerta {string}') do |mensagem|
    expect(LoginPage.new.alerta).to have_content mensagem
  end