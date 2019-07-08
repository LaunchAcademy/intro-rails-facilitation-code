require 'rails_helper'

RSpec.describe "wizards/index", type: :view do
  before(:each) do
    assign(:wizards, [
      Wizard.create!(
        :name => "Name",
        :title => "Title",
        :age => 2
      ),
      Wizard.create!(
        :name => "Name",
        :title => "Title",
        :age => 2
      )
    ])
  end

  it "renders a list of wizards" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
