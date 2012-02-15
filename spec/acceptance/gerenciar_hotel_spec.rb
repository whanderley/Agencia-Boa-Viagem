# coding: utf-8

require 'spec_helper'

feature 'gerenciar hotel' do
  before :each do
  end
  
  scenario 'incluir hotel' do
    visit new_hotel_path
    
    fill_in 'hotel_nome', :with => 'Naraka'
    fill_in 'hotel_endereco', :with => 'Rua Dos bobos'
    fill_in 'hotel_email', :with => 'naraka@gmail.com'
    fill_in 'hotel_telefone', :with => '99999999'
    fill_in 'hotel_site', :with => 'naraka.com.br'
        
    click_button 'Create Hotel'
   
    page.should have_content 'Nome: Naraka'
    page.should have_content 'Endereco: Rua Dos bobos'
    page.should have_content 'Email: naraka@gmail.com'
    page.should have_content 'Telefone: 99999999'
    page.should have_content 'Site: naraka.com.br'
  end

#  scenario 'alterar hotel' do #, :javascript => true do
#    hotel = hotel.create nome: 'zezinho'
#    visit edit_hotel_path(hotel)
#    fill_in 'hotel_nome', :with => 'Zezinho'
#    fill_in 'hotel_cpf', :with => '123'
#    fill_in 'hotel_pontos', :with => '0'
#    fill_in 'hotel_endereco', :with => 'Rua Dos bobos'
#    fill_in 'hotel_email', :with => 'Zezinho@gmail.com'
#    fill_in 'hotel_telefone', :with => '99999999'
#        
#    click_button 'Salvar'
#   
#    page.should have_content 'Nome: Zezinho'
#    page.should have_content 'CPF: 123'
#    page.should have_content 'Pontos: 0'
#    page.should have_content 'Endereco: Rua Dos bobos'
#    page.should have_content 'Email: Zezinho@gmail.com'
#    
#  end
#  scenario 'excluir especialidade' do #, :javascript => true do
#      hotel = hotel.create nome: 'zezinho'
#      visit hotel_path

#      click_link 'Destroy'
#      
#      hotel.count.should == 0
#  end

end