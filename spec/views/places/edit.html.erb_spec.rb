require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyString",
      :role => "MyString",
      :place_url => "MyString"
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input#place_name[name=?]", "place[name]"

      assert_select "input#place_role[name=?]", "place[role]"

      assert_select "input#place_place_url[name=?]", "place[place_url]"
    end
  end
end
