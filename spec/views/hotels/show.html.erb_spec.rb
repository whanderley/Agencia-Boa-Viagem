require 'spec_helper'

describe "hotels/show" do
  before(:each) do
    @hotel = assign(:hotel, stub_model(Hotel,
      :nome => "Nome",
      :endereco => "Endereco",
      :email => "Email",
      :telefone => "Telefone",
      :site => "Site"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Site/)
  end
end
