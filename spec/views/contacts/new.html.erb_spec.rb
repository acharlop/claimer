require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :first => "MyString",
      :last => "MyString",
      :position => nil,
      :company => nil
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_first[name=?]", "contact[first]"

      assert_select "input#contact_last[name=?]", "contact[last]"

      assert_select "input#contact_position_id[name=?]", "contact[position_id]"

      assert_select "input#contact_company_id[name=?]", "contact[company_id]"
    end
  end
end
