# coding: utf-8

require 'spec_helper'

feature 'gerenciar servico' do
  before :each do
  end

  scenario 'incluir servico' do
    visit new_servico_path

    fill_in 'servico_titulo', :with => 'Massagem'
    fill_in 'servico_descricao', :with => 'blabla'

    click_button 'Create Servico'

    page.should have_content 'Titulo: Massagem'
    page.should have_content 'Descrição: blabla'
  end

  scenario 'alterar servico' do #, :javascript => true do
    servico = Servico.create titulo: 'lol'  
    visit edit_servico_path(servico)
    fill_in 'servico_titulo', :with => 'Massagem'
    fill_in 'servico_descricao', :with => 'blabla'

    click_button 'Update Servico'

    page.should have_content 'Titulo: Massagem'
    page.should have_content 'Descrição: blabla'    
  end

  scenario 'excluir servico' do #, :javascript => true do
      servico = Servico.create titulo: 'lol'
      visit servico_path

      click_link 'Destroy'
      
      Servico.count.should == 0
  end

end
