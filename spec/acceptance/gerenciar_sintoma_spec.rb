# coding: utf-8

require 'spec_helper'

feature 'gerenciar sintoma' do

  scenario 'incluir sintoma'  do #, :js => true  do

    visit new_sintoma_path

    preencher_e_verificar_sintoma

    

  end

  scenario 'alterar sintoma' do #, :js => true  do

	sintoma = FactoryGirl.create(:sintoma)

    visit edit_sintoma_path(sintoma)

    preencher_e_verificar_sintoma



  end

  scenario 'excluir sintoma' do #, :javascript => true  do

    sintoma = FactoryGirl.create(:sintoma)

    visit sintomas_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_sintoma

	fill_in 'Descrição',  :with => "Tosse seca"
	 
    click_button 'Salvar'

 	page.should have_content 'Descrição: Tosse seca'


  end
end
