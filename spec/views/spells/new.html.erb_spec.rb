require 'rails_helper'

RSpec.describe "spells/new", type: :view do
  before(:each) do
    assign(:spell, Spell.new(
      :name => "MyString",
      :color => "MyString",
      :wizard_id => 1
    ))
  end

  it "renders new spell form" do
    render

    assert_select "form[action=?][method=?]", spells_path, "post" do

      assert_select "input[name=?]", "spell[name]"

      assert_select "input[name=?]", "spell[color]"

      assert_select "input[name=?]", "spell[wizard_id]"
    end
  end
end
