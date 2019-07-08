require 'rails_helper'

RSpec.describe "spells/show", type: :view do
  before(:each) do
    @spell = assign(:spell, Spell.create!(
      :name => "Name",
      :color => "Color",
      :wizard_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/2/)
  end
end
