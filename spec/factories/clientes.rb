# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nome "MyString"
    cpf "MyString"
    pontos 1
    endereco "MyString"
    email "MyString"
    telefone "MyString"
    string "MyString"
  end
end
