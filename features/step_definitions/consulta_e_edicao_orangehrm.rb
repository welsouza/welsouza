Dado(/^Acessar tela de consulta$/) do
  visit "http://opensource.demo.orangehrmlive.com"
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_viewEmployeeList').click  
end

Dado(/^Pesquisar os dados do empregado$/) do
    click_button('searchBtn')
end

Quando(/^Dados encontrados com sucesso$/) do
  find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[2]').click_link
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with => 'Mudou o nome')
  fill_in('personal_txtEmpLastName', :with => 'Mudou o sobrenome')
  fill_in('personal_txtEmpMiddleName', :with => 'Inseriu nome do meio')
  click_button('btnSave')
    
end

Entao(/^Atualizacao realizada com suceso$/) do
  assert_text('Mudou o nome')
  assert_text('Mudou o sobrenome')
  assert_text('Inseriu nome do meio')
end