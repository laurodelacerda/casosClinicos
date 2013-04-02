# coding: utf-8

require 'spec_helper'

feature 'gerenciar doencasintoma' do

  scenario 'incluir doencasintoma'  do #, :js => true  do

	doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	sintoma = FactoryGirl.create(:sintoma, :descricao => 'Tosse seca') 	
   
	visit new_doencasintoma_path

    preencher_e_verificar_doencasintoma

    

  end

  scenario 'alterar doencasintoma' do #, :js => true  do

	doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	sintoma = FactoryGirl.create(:sintoma, :descricao => 'Tosse seca') 	

	doencasintoma = FactoryGirl.create(:doencasintoma, :doenca => doenca , :sintoma => sintoma)	

    visit edit_doencasintoma_path(doencasintoma)

    preencher_e_verificar_doencasintoma



  end

  scenario 'excluir doencasintoma' do #, :javascript => true  do

    doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	sintoma = FactoryGirl.create(:sintoma, :descricao => 'Tosse seca') 	

	doencasintoma = FactoryGirl.create(:doencasintoma, :doenca => doenca , :sintoma => sintoma)	

    visit doencasintomas_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_doencasintoma

		select 'Bronquite', :on => 'Nome Popular'
		select 'Tosse seca', :on => 'Descrição'     

	click_button 'Salvar'

 	page.should have_content 'Nome Popular: Bronquite'
 	page.should have_content 'Descrição: Tosse seca'


  end
end
