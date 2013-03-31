# coding: utf-8

require 'spec_helper'

feature 'gerenciar tratamento' do

  scenario 'incluir tratamento'  do #, :js => true  do

	tipotratamento = FactoryGirl.create(:tipotratamento, :tipo => 'Medicamentoso') 

    visit new_tratamento_path

    preencher_e_verificar_tratamento

    

  end

  scenario 'alterar tratamento' do #, :js => true  do

	tipotratamento = FactoryGirl.create(:tipotratamento, :tipo => 'Medicamentoso') 	
	    
	tratamento = FactoryGirl.create(:tratamento, :tipotratamento => tipotratamento)

    visit edit_tratamento_path(tratamento)

    preencher_e_verificar_tratamento



  end

  scenario 'excluir tratamento' do #, :javascript => true  do

	tipotratamento = FactoryGirl.create(:tipotratamento, :tipo => 'Medicamentoso') 

    tratamento = FactoryGirl.create(:tratamento, :tipotratamento => tipotratamento)

    visit tratamentos_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_tratamento

	fill_in 'Método',  :with => "Ingerir dois comprimidos/dia"

		select 'Medicamentoso', :on => 'Tipo'
	 
    click_button 'Salvar'

 	page.should have_content 'Método: Ingerir dois comprimidos/dia'
	page.should have_content 'Tipo: Medicamentoso'


  end
end
