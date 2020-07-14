require 'rails_helper'

RSpec.describe "cyborbs/index", type: :view do
  before(:each) do
    assign(:cyborbs, [
      Cyborb.create!(
        :name => "Name",
        :mission => "MyText"
      ),
      Cyborb.create!(
        :name => "Name",
        :mission => "MyText"
      )
    ])
  end

  it "renders a list of cyborbs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
