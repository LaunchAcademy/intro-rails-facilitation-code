require 'rails_helper'

RSpec.describe "wizards/new", type: :view do
  before(:each) do
    assign(:wizard, Wizard.new(
      :name => "MyString",
      :title => "MyString",
      :age => 1
    ))
  end

  it "renders new wizard form" do
    render

    assert_select "form[action=?][method=?]", wizards_path, "post" do

      assert_select "input[name=?]", "wizard[name]"

      assert_select "input[name=?]", "wizard[title]"

      assert_select "input[name=?]", "wizard[age]"
    end
  end
end
