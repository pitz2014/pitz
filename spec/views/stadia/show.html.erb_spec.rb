require 'spec_helper'

describe "stadia/show" do
  before(:each) do
    @stadium = assign(:stadium, stub_model(Stadium,
      :name => "Name",
      :city => "City",
      :owner_club => "Owner Club",
      :capacity => 1,
      :image_url => "Image Url",
      :description => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/City/)
    rendered.should match(/Owner Club/)
    rendered.should match(/1/)
    rendered.should match(/Image Url/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
