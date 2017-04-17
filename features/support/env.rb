require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'rake'
require 'pry'
require 'capybara/cucumber'


#Configurando o driver capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    
end


#Setando a configuração do driver como padrão
Capybara.default_driver = :selenium

#Maximizar a tela ao iniciar
Capybara.page.driver.browser.manage.window.maximize