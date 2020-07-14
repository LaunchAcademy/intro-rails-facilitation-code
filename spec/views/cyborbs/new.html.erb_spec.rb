require 'rails_helper'

RSpec.describe "cyborbs/new", type: :view do
  before(:each) do
    assign(:cyborb, Cyborb.new(
      :name => "MyString",
      :mission => "MyText"
    ))
  end

  it "renders new cyborb form" do
    render

    assert_select "form[action=?][method=?]", cyborbs_path, "post" do

      assert_select "input[name=?]", "cyborb[name]"

      assert_select "textarea[name=?]", "cyborb[mission]"
    end
  end
end
