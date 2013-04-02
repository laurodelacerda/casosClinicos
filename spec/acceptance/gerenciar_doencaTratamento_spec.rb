# coding: utf-8

require 'spec_helper'

feature 'gerenciar doencatratamento' do

  scenario 'incluir doencatratamento'  do #, :js => true  do

	doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	tratamento = FactoryGirl.create(:tratamento, :metodo => 'Ingerir dois comprimidos/dia') 

	visit new_doencatratamento_path

    preencher_e_verificar_doencatratamento

    

  end

  scenario 'alterar doencatratamento' do #, :js => true  do

	doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	tratamento = FactoryGirl.create(:tratamento, :metodo => 'Ingerir dois comprimidos/dia') 

	doencatratamento = FactoryGirl.create(:doencatratamento, :doenca => doenca , :tratamento => tratamento)	

    visit edit_doencatratamento_path(doencatratamento)

    preencher_e_verificar_doencatratamento



  end

  scenario 'excluir doencatratamento' do #, :javascript => true  do

    doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	tratamento = FactoryGirl.create(:tratamento, :metodo => 'Ingerir dois comprimidos/dia') 

	doencatratamento = FactoryGirl.create(:doencatratamento, :doenca => doenca , :tratamento => tratamento)		

    visit doencatratamentos_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_doencatratamento

		select 'Bronquite', :on => 'Doença'
		select 'Ingerir dois comprimidos/dia', :on => 'Tratamento'     

	click_button 'Salvar'

 	page.should have_content 'Doença: Bronquite'
 	page.should have_content 'Tratamento: Ingerir dois comprimidos/dia'


  end
end
