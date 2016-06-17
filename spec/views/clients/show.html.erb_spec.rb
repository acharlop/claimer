require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :first => "First",
      :last => "Last"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First/)
    expect(rendered).to match(/Last/)
  end
end
