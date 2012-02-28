require 'spec_helper'

describe "pacotes/new" do
  before(:each) do
    assign(:pacote, stub_model(Pacote,
      :titulo => "MyString",
      :descricao => "MyString",
      :preco => 1.5,
      :pontos => 1,
      :pontos_requeridos => 1,
      :hotel => nil,
      :servico => nil
    ).as_new_record)
  end

  it "renders new pacote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacotes_path, :method => "post" do
      assert_select "input#pacote_titulo", :name => "pacote[titulo]"
      assert_select "input#pacote_descricao", :name => "pacote[descricao]"
      assert_select "input#pacote_preco", :name => "pacote[preco]"
      assert_select "input#pacote_pontos", :name => "pacote[pontos]"
      assert_select "input#pacote_pontos_requeridos", :name => "pacote[pontos_requeridos]"
      assert_select "input#pacote_hotel", :name => "pacote[hotel]"
      assert_select "input#pacote_servico", :name => "pacote[servico]"
    end
  end
end
