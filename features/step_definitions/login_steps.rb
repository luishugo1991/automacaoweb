  Dado('que esteja na Home') do
    visit 'http://localhost:5000/login'
  end

  Quando('fazer o login com {string} e senha {string}') do |email, senha|
    LoginPage.new.faz_login(email, senha)
  end

  Então('deverá ver a mensagem de boas vindas {string}') do |mensagem|
    painel_tarefas = find('#task-board')
    expect(painel_tarefas).to have_content mensagem
  end

  Então('deverá ver a mensagem de alerta {string}') do |mensagem|
    alerta = find('.alert-login')
    expect(alerta).to have_content mensagem
  end