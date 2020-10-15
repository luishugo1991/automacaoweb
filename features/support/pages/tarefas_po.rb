class TarefasPage
  include Capybara::DSL

    def painel
      find('#task-board')
    end

    def buscar_tr(nome)
      find('#tasks tbody tr', text: nome)
    end

    def cadastrar(nome, data_f)
      find('#insert-button').click

      within('#add-task-view')do
      fill_in 'title',	with: nome
      fill_in 'dueDate',	with: data_f
      click_button 'Cadastrar'
    end

    def alerta
      find('.alert-warn').text
    end
end
end