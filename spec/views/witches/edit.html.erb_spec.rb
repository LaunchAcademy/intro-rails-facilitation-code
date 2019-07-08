require 'rails_helper'

RSpec.describe "witches/edit", type: :view do
  before(:each) do
    @witch = assign(:witch, Witch.create!(
      :name => "MyString",
      :superpower => "MyString"
    ))
  end

  it "renders the edit witch form" do
    render

    assert_select "form[action=?][method=?]", witch_path(@witch), "post" do

      assert_select "input[name=?]", "witch[name]"

      assert_select "input[name=?]", "witch[superpower]"
    end
  end
end
