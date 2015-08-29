require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        :name => "Name",
        :role => "Role",
        :place_url => "Place Url"
      ),
      Place.create!(
        :name => "Name",
        :role => "Role",
        :place_url => "Place Url"
      )
    ])
  end

  it "renders a list of places" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Place Url".to_s, :count => 2
  end
end
