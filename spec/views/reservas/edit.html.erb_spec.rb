require 'spec_helper'

describe "reservas/edit" do
  before(:each) do
    @reserva = assign(:reserva, stub_model(Reserva,
      :modo_de_pagamento => "MyString",
      :cliente => nil,
      :pacote => nil
    ))
  end

  it "renders the edit reserva form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reservas_path(@reserva), :method => "post" do
      assert_select "input#reserva_modo_de_pagamento", :name => "reserva[modo_de_pagamento]"
      assert_select "input#reserva_cliente", :name => "reserva[cliente]"
      assert_select "input#reserva_pacote", :name => "reserva[pacote]"
    end
  end
end
