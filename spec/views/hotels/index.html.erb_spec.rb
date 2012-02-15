require 'spec_helper'

describe "hotels/index" do
  before(:each) do
    assign(:hotels, [
      stub_model(Hotel,
        :nome => "Nome",
        :endereco => "Endereco",
        :email => "Email",
        :telefone => "Telefone",
        :site => "Site"
      ),
      stub_model(Hotel,
        :nome => "Nome",
        :endereco => "Endereco",
        :email => "Email",
        :telefone => "Telefone",
        :site => "Site"
      )
    ])
  end

  it "renders a list of hotels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Site".to_s, :count => 2
  end
end
