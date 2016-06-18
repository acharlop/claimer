require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :first => "First",
        :last => "Last",
        :position => nil,
        :company => nil
      ),
      Contact.create!(
        :first => "First",
        :last => "Last",
        :position => nil,
        :company => nil
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
