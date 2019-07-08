require 'rails_helper'

RSpec.describe "wizards/show", type: :view do
  before(:each) do
    @wizard = assign(:wizard, Wizard.create!(
      :name => "Name",
      :title => "Title",
      :age => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
