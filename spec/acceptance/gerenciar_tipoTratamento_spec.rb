# coding: utf-8

require 'spec_helper'

feature 'gerenciar tipotratamento' do

  scenario 'incluir tipotratamento'  do #, :js => true  do

    visit new_tipotratamento_path

    preencher_e_verificar_tipotratamento

    

  end

  scenario 'alterar tipotratamento' do #, :js => true  do

    tipotratamento = FactoryGirl.create(:tipotratamento)

    visit edit_tipotratamento_path(tipotratamento)

    preencher_e_verificar_tipotratamento



  end

   scenario 'excluir tipotratamento' do #, :javascript => true  do

       tipotratamento = FactoryGirl.create(:tipotratamento)

        visit tipotratamentos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tipotratamento

      fill_in 'Tipo',  :with => "Medicamentoso"

 
      click_button 'Salvar'

      page.should have_content 'Tipo: Medicamentoso'
      

   end
end
