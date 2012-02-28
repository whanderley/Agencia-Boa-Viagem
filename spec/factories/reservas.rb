# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reserva do
    data_da_reserva "2012-02-28"
    modo_de_pagamento "MyString"
    cliente nil
    pacote nil
  end
end
