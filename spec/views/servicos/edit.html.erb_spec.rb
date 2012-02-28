require 'spec_helper'

describe "servicos/edit" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :titulo => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => servicos_path(@servico), :method => "post" do
      assert_select "input#servico_titulo", :name => "servico[titulo]"
      assert_select "input#servico_descricao", :name => "servico[descricao]"
    end
  end
end
