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
end
