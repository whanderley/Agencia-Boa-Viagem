require 'spec_helper'

describe "reservas/index" do
  before(:each) do
    assign(:reservas, [
      stub_model(Reserva,
        :modo_de_pagamento => "Modo_de_pagamento",
        :cliente => nil,
        :pacote => nil
      ),
      stub_model(Reserva,
        :modo_de_pagamento => "Modo_de_pagamento",
        :cliente => nil,
        :pacote => nil
      )
    ])
  end

  it "renders a list of reservas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Modo_de_pagamento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
