# coding: utf-8
require 'rails_helper'
feature 'gerenciar resultado' do
scenario 'incluir resultado' do # , :js => true do
visit new_resultado_path
preencher_e_verificar_resultado
end
scenario 'alterar resultado' do #, :js => true do
resultado = FactoryGirl.create(:resultado)
visit edit_resultado_path(resultado)
preencher_e_verificar_resultado
end
scenario 'excluir resultado' do #, :javascript => true do
resultado = FactoryGirl.create(:resultado)
visit resultados_path
click_link 'Excluir'
end
def preencher_e_verificar_resultado
fill_in 'Pesoinicial', :with => "50"
fill_in 'Pesofinal', :with => "55"
fill_in 'Status', :with => "alcancado"
fill_in 'Perdas', :with => "0"
fill_in 'Ganhos', :with => "5"
click_button 'Salvar'
expect(page).to have_content 'Pesoinicial: 50'
expect(page).to have_content 'Pesofinal: 55'
expect(page).to have_content 'Status: alcancado'
expect(page).to have_content 'Perdas: 0'
expect(page).to have_content 'Ganhos: 5'
end
end
