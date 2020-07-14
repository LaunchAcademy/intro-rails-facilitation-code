require 'rails_helper'

RSpec.describe "guitars/index", type: :view do
  before(:each) do
    assign(:guitars, [
      Guitar.create!(
        :owner => "Owner",
        :guitar_type => "MyText"
      ),
      Guitar.create!(
        :owner => "Owner",
        :guitar_type => "MyText"
      )
    ])
  end

  it "renders a list of guitars" do
    render
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
