# coding: utf-8

require 'spec_helper'

feature 'gerenciar doencaprevencao' do

  scenario 'incluir doencaprevencao'  do #, :js => true  do

	doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	prevencao = FactoryGirl.create(:prevencao, :metodo => 'Evitar ambientes frios') 	
   
	visit new_doencaprevencao_path

    preencher_e_verificar_doencaprevencao

    

  end

  scenario 'alterar doencaprevencao' do #, :js => true  do

	doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	prevencao = FactoryGirl.create(:prevencao, :metodo => 'Evitar ambientes frios') 

	doencaprevencao = FactoryGirl.create(:doencaprevencao, :doenca => doenca , :prevencao => prevencao)		

    visit edit_doencaprevencao_path(doencaprevencao)

    preencher_e_verificar_doencaprevencao



  end

  scenario 'excluir doencaprevencao' do #, :javascript => true  do

    doenca = FactoryGirl.create(:doenca, :nomepopular => 'Bronquite') 

	prevencao = FactoryGirl.create(:prevencao, :metodo => 'Evitar ambientes frios') 

	doencaprevencao = FactoryGirl.create(:doencaprevencao, :doenca => doenca , :prevencao => prevencao)		

    visit doencaprevencaos_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_doencaprevencao

		select 'Bronquite', :on => 'Doença'
		select 'Evitar ambientes frios', :on => 'Prevenção'     

	click_button 'Salvar'

 	page.should have_content 'Doença: Bronquite'
 	page.should have_content 'Prevenção: Evitar ambientes frios'


  end
end
