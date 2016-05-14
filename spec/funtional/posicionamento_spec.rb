# coding: utf-8
require 'spec_helper'

feature 'posicionamento' do

	scenario 'incluir posicionamento' do
		visit new_posicionamento_path
		preencher_verificar_posicionamento
	end

	scenario 'alterar posicionamento' do
		posicionamento = FactoryGirl.create(:posicionamento)
		visit edit_posicionamento_path(posicionamento)
		preencher_verificar_posicionamento
	end

	scenario 'teste exclusao' do
		posicionamento = FactoryGirl.create(:posicionamento)
		visit posicionamentos_path
		click_link 'Excluir'
	end	

	def preencher_verificar_posicionamento
		fill_in 'Posicao', :with => '101010'
		fill_in 'Horario', :with => '00:30'
		fill_in 'Data', :with => '01/01/2016'
		select 'Ricardo', :from => 'Usuario'
		click_button 'Salvar'
		expect(page).to have_content 'Posicao: 101010'
		expect(page).to have_content 'Horario: 00:30'
		expect(page).to have_content 'Data: 01/01/2016'
	end
end		