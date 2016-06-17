require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :first => "First",
        :last => "Last"
      ),
      Client.create!(
        :first => "First",
        :last => "Last"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
  end
end
