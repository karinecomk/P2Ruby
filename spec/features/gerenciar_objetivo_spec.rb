# coding: utf-8
require 'rails_helper'
feature 'gerenciar objetivo' do
scenario 'incluir objetivo' do # , :js => true do
visit new_objetivo_path
preencher_e_verificar_objetivo
end
scenario 'alterar objetivo' do #, :js => true do
objetivo = FactoryGirl.create(:objetivo)
visit edit_objetivo_path(objetivo)
preencher_e_verificar_objetivo
end
scenario 'excluir objetivo' do #, :javascript => true do
objetivo = FactoryGirl.create(:objetivo)
visit objetivos_path
click_link 'Excluir'
end
def preencher_e_verificar_objetivo
fill_in 'Dias', :with => 30
fill_in 'Peso', :with => 60
click_button 'Salvar'
expect(page).to have_content 'Dias: 30'
expect(page).to have_content 'Peso: 60'
end
end
