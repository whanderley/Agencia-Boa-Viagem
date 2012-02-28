# coding: utf-8

require 'spec_helper'

feature 'gerenciar pacote' do
  before :each do
  end
  
  scenario 'incluir pacote' do
    hotel = Hotel.create nome: 'Palace'
    servico = Servico.create titulo: 'Massagem Indiana'    
    visit new_pacote_path
    
    fill_in 'pacote_titulo', :with => 'básico'
    fill_in 'pacote_descricao', :with => 'pacote basico'
    fill_in 'pacote_preco', :with => '200'
    fill_in 'pacote_pontos', :with => '3'
    fill_in 'pacote_pontos_requeridos', :with => '48'
    select('Palace', from: "Hotel")
    select('Massagem Indiana', from: "Serviço")
          
    click_button 'Salvar'
   
    page.should have_content 'Titulo: básico'
    page.should have_content 'Descrição: pacote basico'
    page.should have_content 'Preço: 200'
    page.should have_content 'Pontos: 3'
    page.should have_content 'Pontos requeridos: 48'
    page.should have_content 'Hotel: Palace'
    page.should have_content 'Serviço: Massagem Indiana'
  end

  scenario 'editar pacote' do
    hotel = Hotel.create nome: 'Palace'
    servico = Servico.create titulo: 'Massagem Indiana'    
    visit new_pacote_path
    
    fill_in 'pacote_titulo', :with => 'luxo'
    fill_in 'pacote_descricao', :with => 'pacote de luxo'
    fill_in 'pacote_preco', :with => '500'
    fill_in 'pacote_pontos', :with => '10'
    fill_in 'pacote_pontos_requeridos', :with => '70'
    select('Palace', from: "Hotel")
    select('Massagem Indiana', from: "Serviço")
          
    click_button 'Salvar'
   
    page.should have_content 'Titulo: luxo'
    page.should have_content 'Descrição: pacote de luxo'
    page.should have_content 'Preço: 500'
    page.should have_content 'Pontos: 10'
    page.should have_content 'Pontos requeridos: 70'
    page.should have_content 'Hotel: Palace'
    page.should have_content 'Serviço: Massagem Indiana'
  end

  scenario 'excluir pacote' do #, :javascript => true do
      hotel = Pacote.create titulo: 'luxo'
      visit pacote_path

      click_link 'Destroy'
      
      Pacote.count.should == 0
  end

end
