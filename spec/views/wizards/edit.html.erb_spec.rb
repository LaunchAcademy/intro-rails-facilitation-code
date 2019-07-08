require 'rails_helper'

RSpec.describe "wizards/edit", type: :view do
  before(:each) do
    @wizard = assign(:wizard, Wizard.create!(
      :name => "MyString",
      :title => "MyString",
      :age => 1
    ))
  end

  it "renders the edit wizard form" do
    render

    assert_select "form[action=?][method=?]", wizard_path(@wizard), "post" do

      assert_select "input[name=?]", "wizard[name]"

      assert_select "input[name=?]", "wizard[title]"

      assert_select "input[name=?]", "wizard[age]"
    end
  end
end
