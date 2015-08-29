require 'rails_helper'

RSpec.describe "places/new", type: :view do
  before(:each) do
    assign(:place, Place.new(
      :name => "MyString",
      :role => "MyString",
      :place_url => "MyString"
    ))
  end

  it "renders new place form" do
    render

    assert_select "form[action=?][method=?]", places_path, "post" do

      assert_select "input#place_name[name=?]", "place[name]"

      assert_select "input#place_role[name=?]", "place[role]"

      assert_select "input#place_place_url[name=?]", "place[place_url]"
    end
  end
end
