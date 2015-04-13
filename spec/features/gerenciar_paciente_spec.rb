# coding: utf-8
require 'rails_helper'
feature 'gerenciar paciente' do
scenario 'incluir paciente' do # , :js => true do
visit new_paciente_path
preencher_e_verificar_paciente
end
scenario 'alterar paciente' do #, :js => true do
paciente = FactoryGirl.create(:paciente)
visit edit_paciente_path(paciente)
preencher_e_verificar_paciente
end
scenario 'excluir paciente' do #, :javascript => true do
paciente = FactoryGirl.create(:paciente)
visit pacientes_path
click_link 'Excluir'
end
def preencher_e_verificar_paciente
fill_in 'Nome', :with => "Karine"
fill_in 'Cpf', :with => 800000000
fill_in 'Endereco', :with => "Rua XXX"
fill_in 'Nascimento', :with => "11/11/1992"
fill_in 'Altura', :with => 22
fill_in 'Imc', :with => 21
click_button 'Salvar'
expect(page).to have_content 'Nome: Karine'
expect(page).to have_content 'Cpf: 800000000'
expect(page).to have_content 'Endereco: Rua XXX'
expect(page).to have_content 'Nascimento: 11/11/1992'
expect(page).to have_content 'Altura: 22'
expect(page).to have_content 'Imc: 21'
end
end
