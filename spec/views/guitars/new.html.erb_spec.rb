require 'rails_helper'

RSpec.describe "guitars/new", type: :view do
  before(:each) do
    assign(:guitar, Guitar.new(
      :owner => "MyString",
      :guitar_type => "MyText"
    ))
  end

  it "renders new guitar form" do
    render

    assert_select "form[action=?][method=?]", guitars_path, "post" do

      assert_select "input[name=?]", "guitar[owner]"

      assert_select "textarea[name=?]", "guitar[guitar_type]"
    end
  end
end
