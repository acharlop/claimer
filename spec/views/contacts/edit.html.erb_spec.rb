require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :first => "MyString",
      :last => "MyString",
      :position => nil,
      :company => nil
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_first[name=?]", "contact[first]"

      assert_select "input#contact_last[name=?]", "contact[last]"

      assert_select "input#contact_position_id[name=?]", "contact[position_id]"

      assert_select "input#contact_company_id[name=?]", "contact[company_id]"
    end
  end
end
