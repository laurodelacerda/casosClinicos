# coding: utf-8

require 'spec_helper'

feature 'gerenciar prevencao' do

  scenario 'incluir prevencao'  do #, :js => true  do

    visit new_prevencao_path

    preencher_e_verificar_prevencao

    

  end

  scenario 'alterar prevencao' do #, :js => true  do

	prevencao = FactoryGirl.create(:prevencao)

    visit edit_prevencao_path(prevencao)

    preencher_e_verificar_prevencao



  end

  scenario 'excluir prevencao' do #, :javascript => true  do

    prevencao = FactoryGirl.create(:prevencao)

    visit prevencaos_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_prevencao

	fill_in 'Método',  :with => "Evitar ambientes frios"
	 
    click_button 'Salvar'

 	page.should have_content 'Método: Evitar ambientes frios'


  end
end
