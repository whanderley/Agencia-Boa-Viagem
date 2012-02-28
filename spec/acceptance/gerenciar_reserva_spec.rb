# coding: utf-8

require 'spec_helper'

feature 'gerenciar reserva' do
  before :each do
  end
  
  scenario 'incluir reserva' do
    cliente = Cliente.create nome: 'Gilmar das Candongas'
    pacote = Pacote.create titulo: 'Luxo'    
    visit new_reserva_path
    
    fill_in 'reserva_modo_de_pagamento', :with => 'dinheiro'
    select('Gilmar das Candongas', from: "Cliente")
    select('Luxo', from: "Pacote")
          
    click_button 'Salvar'
   
    page.should have_content 'Modo de pagamento: dinheiro'
    page.should have_content 'Cliente: Gilmar das Candongas'
    page.should have_content 'Pacote: Luxo'
  end
end
