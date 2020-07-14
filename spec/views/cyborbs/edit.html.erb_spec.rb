require 'rails_helper'

RSpec.describe "cyborbs/edit", type: :view do
  before(:each) do
    @cyborb = assign(:cyborb, Cyborb.create!(
      :name => "MyString",
      :mission => "MyText"
    ))
  end

  it "renders the edit cyborb form" do
    render

    assert_select "form[action=?][method=?]", cyborb_path(@cyborb), "post" do

      assert_select "input[name=?]", "cyborb[name]"

      assert_select "textarea[name=?]", "cyborb[mission]"
    end
  end
end
