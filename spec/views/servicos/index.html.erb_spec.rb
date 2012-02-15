require 'spec_helper'

describe "servicos/index" do
  before(:each) do
    assign(:servicos, [
      stub_model(Servico,
        :titulo => "Titulo",
        :descricao => "Descricao",
        :foto => ""
      ),
      stub_model(Servico,
        :titulo => "Titulo",
        :descricao => "Descricao",
        :foto => ""
      )
    ])
  end

  it "renders a list of servicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
