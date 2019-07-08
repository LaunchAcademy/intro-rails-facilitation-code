require 'rails_helper'

RSpec.describe "witches/new", type: :view do
  before(:each) do
    assign(:witch, Witch.new(
      :name => "MyString",
      :superpower => "MyString"
    ))
  end

  it "renders new witch form" do
    render

    assert_select "form[action=?][method=?]", witches_path, "post" do

      assert_select "input[name=?]", "witch[name]"

      assert_select "input[name=?]", "witch[superpower]"
    end
  end
end
