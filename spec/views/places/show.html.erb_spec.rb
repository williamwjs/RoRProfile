require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "Name",
      :role => "Role",
      :place_url => "Place Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Place Url/)
  end
end
