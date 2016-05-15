# coding: utf-8
require 'spec_helper'

feature 'Favorito' do

	scenario 'Incluir favorito' do
		criar_usuario
		criar_posicionamento
		visit new_favorito_path
		preencher_verificar_favorito
	end

	scenario 'Alterar favorito' do
		criar_usuario
		criar_posicionamento
		favorito = FactoryGirl.create(:favorito)
		visit edit_favorito_path(favorito)
		preencher_verificar_favorito
	end

	scenario 'Excluir favorito' do
		favorito = FactoryGirl.create(:favorito)
		visit favoritos_path
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

	def criar_posicionamento
		visit new_posicionamento_path
		preencher_verificar_posicionamento
	end
	def preencher_verificar_posicionamento
		fill_in 'Posicao', :with => '101010'
		fill_in 'Horario', :with => '10:10'
		fill_in 'Data', :with => '10/10/2016'
		select 'Ricardo', :from => 'Usuario'
		click_button 'Salvar'
		expect(page).to have_content 'Posicao: 101010'
		expect(page).to have_content 'Horario: 10:10'
		expect(page).to have_content 'Data: 10/10/2016'
	end

	def preencher_verificar_favorito
		fill_in 'Nomelocal', :with => 'IFF'
		select 'Ricardo', :from => 'Usuario'
		select '101010', :from => 'Posicao'
		click_button 'Salvar'
		expect(page).to have_content 'Nomelocal: IFF'
	end
end		