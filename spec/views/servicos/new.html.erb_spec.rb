require 'spec_helper'

describe "servicos/new" do
  before(:each) do
    assign(:servico, stub_model(Servico,
      :titulo => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => servicos_path, :method => "post" do
      assert_select "input#servico_titulo", :name => "servico[titulo]"
      assert_select "input#servico_descricao", :name => "servico[descricao]"
    end
  end
end
