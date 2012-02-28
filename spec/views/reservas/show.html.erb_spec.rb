require 'spec_helper'

describe "reservas/show" do
  before(:each) do
    @reserva = assign(:reserva, stub_model(Reserva,
      :modo_de_pagamento => "Modo_de_pagamento",
      :cliente => nil,
      :pacote => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Modo_de_pagamento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
