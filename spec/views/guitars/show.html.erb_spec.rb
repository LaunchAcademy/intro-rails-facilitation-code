require 'rails_helper'

RSpec.describe "guitars/show", type: :view do
  before(:each) do
    @guitar = assign(:guitar, Guitar.create!(
      :owner => "Owner",
      :guitar_type => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/MyText/)
  end
end
