# coding: utf-8
require 'spec_helper'

feature 'Usuario' do

	scenario 'Incluir usuario' do
		visit new_usuario_path
		preencher_verificar_usuario
	end

	scenario 'Alterar usuario' do
		usuario = FactoryGirl.create(:usuario)
		visit edit_usuario_path(usuario)
		preencher_verificar_usuario
	end

	scenario 'Excluir usuario' do
		usuario = FactoryGirl.create(:usuario)
		visit usuarios_path
		click_link 'Excluir'
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
end		