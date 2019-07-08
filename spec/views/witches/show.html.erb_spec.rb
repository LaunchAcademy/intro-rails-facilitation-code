require 'rails_helper'

RSpec.describe "witches/show", type: :view do
  before(:each) do
    @witch = assign(:witch, Witch.create!(
      :name => "Name",
      :superpower => "Superpower"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Superpower/)
  end
end
