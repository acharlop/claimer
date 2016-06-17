require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :first => "MyString",
      :last => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_first[name=?]", "client[first]"

      assert_select "input#client_last[name=?]", "client[last]"
    end
  end
end
