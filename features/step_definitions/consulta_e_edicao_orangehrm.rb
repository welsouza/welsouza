require 'site_prism'

#empsearch_employee_name_empName

Dado(/^Acessar tela de consulta$/) do
  visit "http://opensource.demo.orangehrmlive.com"
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_viewEmployeeList').click  
  #binding.pry
end

Dado(/^Pesquisar os dados do empregado$/) do
    fill_in('empsearch_id', :with => $id)
    click_button('searchBtn')
end

Quando(/^Dados encontrados com sucesso$/) do
  visit "http://opensource.demo.orangehrmlive.com/index.php/pim/viewEmployee/empNumber/" + $id
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with => 'Mudou o nome')
  fill_in('personal_txtEmpLastName', :with => 'Mudou o sobrenome')
  fill_in('personal_txtEmpMiddleName', :with => 'Inseriu nome do meio')
end

Entao(/^Atualizacao realizada com suceso$/) do
  click_button('btnSave')
  binding.pry
end