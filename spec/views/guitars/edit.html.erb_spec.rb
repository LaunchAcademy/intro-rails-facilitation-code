require 'rails_helper'

RSpec.describe "guitars/edit", type: :view do
  before(:each) do
    @guitar = assign(:guitar, Guitar.create!(
      :owner => "MyString",
      :guitar_type => "MyText"
    ))
  end

  it "renders the edit guitar form" do
    render

    assert_select "form[action=?][method=?]", guitar_path(@guitar), "post" do

      assert_select "input[name=?]", "guitar[owner]"

      assert_select "textarea[name=?]", "guitar[guitar_type]"
    end
  end
end
