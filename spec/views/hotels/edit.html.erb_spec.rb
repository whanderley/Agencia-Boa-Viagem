require 'spec_helper'

describe "hotels/edit" do
  before(:each) do
    @hotel = assign(:hotel, stub_model(Hotel,
      :nome => "MyString",
      :endereco => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :site => "MyString"
    ))
  end

  it "renders the edit hotel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hotels_path(@hotel), :method => "post" do
      assert_select "input#hotel_nome", :name => "hotel[nome]"
      assert_select "input#hotel_endereco", :name => "hotel[endereco]"
      assert_select "input#hotel_email", :name => "hotel[email]"
      assert_select "input#hotel_telefone", :name => "hotel[telefone]"
      assert_select "input#hotel_site", :name => "hotel[site]"
    end
  end
end
