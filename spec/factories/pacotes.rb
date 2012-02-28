# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pacote do
    titulo "MyString"
    descricao "MyString"
    preco 1.5
    pontos 1
    pontos_requeridos 1
    hotel nil
    servico nil
  end
end
