require 'rails_helper'

RSpec.describe "witches/index", type: :view do
  before(:each) do
    assign(:witches, [
      Witch.create!(
        :name => "Name",
        :superpower => "Superpower"
      ),
      Witch.create!(
        :name => "Name",
        :superpower => "Superpower"
      )
    ])
  end

  it "renders a list of witches" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Superpower".to_s, :count => 2
  end
end
