# coding: utf-8
require 'spec_helper'

feature 'Posicionamento' do

	scenario 'Incluir posicionamento' do
		criar_usuario
		visit new_posicionamento_path
		preencher_verificar_posicionamento
	end

	scenario 'Alterar posicionamento' do
		criar_usuario
		posicionamento = FactoryGirl.create(:posicionamento)
		visit edit_posicionamento_path(posicionamento)
		preencher_verificar_posicionamento
	end

	scenario 'Excluir posicionamento' do
		posicionamento = FactoryGirl.create(:posicionamento)
		visit posicionamentos_path
		click_link 'Excluir'
	end	


	def criar_usuario
		visit new_usuario_path
		preencher_verificar_usuario
	end

	def preencher_verificar_usuario
		fill_in 'Login', :with => 'Ricardo'
		fill_in 'Senha', :with => 'Ricardo'
		fill_in 'Nome', :with => 'Ricardo'
		fill_in 'Email', :with => 'Ricardo'
		fill_in 'Numero', :with => '998989898'
		check 'Status'
		click_button 'Salvar'
		expect(page).to have_content 'Login: Ricardo'
		expect(page).to have_content 'Senha: Ricardo'
		expect(page).to have_content 'Nome: Ricardo'
		expect(page).to have_content 'Email: Ricardo'
		expect(page).to have_content 'Numero: 998989898'
		expect(page).to have_content 'Status: true'
	end

	def preencher_verificar_posicionamento
		fill_in 'Posicao', :with => '101010'
		fill_in 'Horario', :with => '10:10'
		fill_in 'Data', :with => '10/10/2016'
		select 'Ricardo', from: 'Usuario'
		click_button 'Salvar'
		expect(page).to have_content 'Posicao: 101010'
		expect(page).to have_content 'Horario: 10:10'
		expect(page).to have_content 'Data: 10/10/2016'

	end

end		