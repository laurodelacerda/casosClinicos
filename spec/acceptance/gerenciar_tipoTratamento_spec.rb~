# coding: utf-8

require 'spec_helper'

feature 'gerenciar tipodoenca' do

  scenario 'incluir tipodoenca'  do #, :js => true  do

    visit new_tipodoenca_path

    preencher_e_verificar_tipodoenca

    

  end

  scenario 'alterar tipodoenca' do #, :js => true  do

    tipodoenca = FactoryGirl.create(:tipodoenca)

    visit edit_tipodoenca_path(tipodoenca)

    preencher_e_verificar_tipodoenca



  end

   scenario 'excluir tipodoenca' do #, :javascript => true  do

       tipodoenca = FactoryGirl.create(:tipodoenca)

        visit tipodoencas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tipodoenca

      fill_in 'Tipo',  :with => "Respiratória"

 
      click_button 'Salvar'

      page.should have_content 'Tipo: Respiratória'
      

   end
end
