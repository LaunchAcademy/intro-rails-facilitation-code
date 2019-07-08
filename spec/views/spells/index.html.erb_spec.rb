require 'rails_helper'

RSpec.describe "spells/index", type: :view do
  before(:each) do
    assign(:spells, [
      Spell.create!(
        :name => "Name",
        :color => "Color",
        :wizard_id => 2
      ),
      Spell.create!(
        :name => "Name",
        :color => "Color",
        :wizard_id => 2
      )
    ])
  end

  it "renders a list of spells" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
