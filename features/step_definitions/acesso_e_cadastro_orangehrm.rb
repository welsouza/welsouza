require 'site_prism'

Dado(/^Que esteja na home do site$/) do
   visit "http://opensource.demo.orangehrmlive.com"
end

Dado(/^o login seja efeuado com sucesso$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^Inserir os dados do empregado$/) do
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_addEmployee').click  
  fill_in('firstName', :with => 'Wellington')
  fill_in('lastName', :with => 'Souza')
 
  $id = find('input[id$=employeeId]').value
   
end

Entao(/^Cadastro efetuado com suceso$/) do
    click_button('btnSave')
end
