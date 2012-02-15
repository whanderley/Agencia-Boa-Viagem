require 'spec_helper'

describe "servicos/show" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :titulo => "Titulo",
      :descricao => "Descricao",
      :foto => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
