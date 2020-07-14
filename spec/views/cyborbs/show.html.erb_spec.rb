require 'rails_helper'

RSpec.describe "cyborbs/show", type: :view do
  before(:each) do
    @cyborb = assign(:cyborb, Cyborb.create!(
      :name => "Name",
      :mission => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
