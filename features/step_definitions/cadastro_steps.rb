require 'faker'

Dado('que esteja no Formulário de Cadastro') do
    LoginPage.new.cadastro
  end
  
  Dado('possuir os seguintes dados nome:{string} email:{string} e senha:{string}') do |nome, email, senha|
    
    Cadastro.new.preencher(nome, email, senha)
    
  end
  
  Quando('fazer o Cadastro') do
    Cadastro.new.faz_cadastro
    sleep 5
  end

  Então('deverá ver uma mensagem {string}') do |mensagem|
    expect(Cadastro.new.alertmensagem).to have_content mensagem
  end

  Então('deverá ver essa mensagem {string}') do |erromsg|
    
    expect(Cadastro.new.erromensagem).to have_content erromsg
  end