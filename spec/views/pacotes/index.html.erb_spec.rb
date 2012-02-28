require 'spec_helper'

describe "pacotes/index" do
  before(:each) do
    assign(:pacotes, [
      stub_model(Pacote,
        :titulo => "Titulo",
        :descricao => "Descricao",
        :preco => 1.5,
        :pontos => 1,
        :pontos_requeridos => 1,
        :hotel => nil,
        :servico => nil
      ),
      stub_model(Pacote,
        :titulo => "Titulo",
        :descricao => "Descricao",
        :preco => 1.5,
        :pontos => 1,
        :pontos_requeridos => 1,
        :hotel => nil,
        :servico => nil
      )
    ])
  end

  it "renders a list of pacotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
