# coding: utf-8

require 'spec_helper'

feature 'gerenciar doenca' do

  scenario 'incluir doenca'  do #, :js => true  do

	tipodoenca = FactoryGirl.create(:tipodoenca, :tipo => 'Respiratória') 

    visit new_doenca_path

    preencher_e_verificar_doenca

    

  end

  scenario 'alterar doenca' do #, :js => true  do

	tipodoenca = FactoryGirl.create(:tipodoenca, :tipo => 'Respiratória') 	
	    
	doenca = FactoryGirl.create(:doenca, :tipodoenca => tipodoenca)

    visit edit_doenca_path(doenca)

    preencher_e_verificar_doenca



  end

  scenario 'excluir doenca' do #, :javascript => true  do

	tipodoenca = FactoryGirl.create(:tipodoenca, :tipo => 'Respiratória') 

    doenca = FactoryGirl.create(:doenca, :tipodoenca => tipodoenca)

    visit doencas_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_doenca

	fill_in 'Nome Popular',  :with => "Bronquite"
	fill_in 'Nome Biológico',  :with => "Bronquite"
	fill_in 'Histórico',  :with => "Começou em 1900"
	fill_in 'Descrição',  :with => "Inflamação dos brônquios"
	fill_in 'Causa',  :with => "Inflamação dos brônquios"   

		select 'Respiratória', :on => 'Tipo'
	 
    click_button 'Salvar'

 	page.should have_content 'Nome Popular: Bronquite'
	page.should have_content 'Nome Biológico: Bronquite'
	page.should have_content 'Histórico: Começou em 1900'
	page.should have_content 'Descrição: Inflamação dos brônquios'
	page.should have_content 'Causa: Inflamação dos brônquios' 
	page.should have_content 'Tipo: Respiratória'
      

  end
end
