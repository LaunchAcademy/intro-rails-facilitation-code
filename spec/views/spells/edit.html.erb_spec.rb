require 'rails_helper'

RSpec.describe "spells/edit", type: :view do
  before(:each) do
    @spell = assign(:spell, Spell.create!(
      :name => "MyString",
      :color => "MyString",
      :wizard_id => 1
    ))
  end

  it "renders the edit spell form" do
    render

    assert_select "form[action=?][method=?]", spell_path(@spell), "post" do

      assert_select "input[name=?]", "spell[name]"

      assert_select "input[name=?]", "spell[color]"

      assert_select "input[name=?]", "spell[wizard_id]"
    end
  end
end
