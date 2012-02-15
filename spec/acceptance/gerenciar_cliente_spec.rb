# coding: utf-8

require 'spec_helper'

feature 'gerenciar cliente' do
  before :each do
  end
  
  scenario 'incluir cliente' do
    visit new_cliente_path
    
    fill_in 'cliente_nome', :with => 'Zezinho'
    fill_in 'cliente_cpf', :with => '123'
    fill_in 'cliente_pontos', :with => '0'
    fill_in 'cliente_endereco', :with => 'Rua Dos bobos'
    fill_in 'cliente_email', :with => 'Zezinho@gmail.com'
    fill_in 'cliente_telefone', :with => '99999999'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Zezinho'
    page.should have_content 'CPF: 123'
    page.should have_content 'Pontos: 0'
    page.should have_content 'Endereco: Rua Dos bobos'
    page.should have_content 'Email: Zezinho@gmail.com'
  end

  scenario 'alterar cliente' do #, :javascript => true do
    cliente = Cliente.create nome: 'zezinho'
    visit edit_cliente_path(cliente)
   fill_in 'cliente_nome', :with => 'Zezinho'
    fill_in 'cliente_cpf', :with => '123'
    fill_in 'cliente_pontos', :with => '0'
    fill_in 'cliente_endereco', :with => 'Rua Dos bobos'
    fill_in 'cliente_email', :with => 'Zezinho@gmail.com'
    fill_in 'cliente_telefone', :with => '99999999'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Zezinho'
    page.should have_content 'CPF: 123'
    page.should have_content 'Pontos: 0'
    page.should have_content 'Endereco: Rua Dos bobos'
    page.should have_content 'Email: Zezinho@gmail.com'
    
  end
  scenario 'excluir especialidade' do #, :javascript => true do
      cliente = Cliente.create nome: 'zezinho'
      visit cliente_path

      click_link 'Destroy'
      
      Cliente.count.should == 0
  end

end
