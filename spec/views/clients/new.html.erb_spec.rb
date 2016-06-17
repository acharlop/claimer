require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      :first => "MyString",
      :last => "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input#client_first[name=?]", "client[first]"

      assert_select "input#client_last[name=?]", "client[last]"
    end
  end
end
