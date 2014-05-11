require 'spec_helper'

describe "stadia/index" do
  before(:each) do
    assign(:stadia, [
      stub_model(Stadium,
        :name => "Name",
        :city => "City",
        :owner_club => "Owner Club",
        :capacity => 1,
        :image_url => "Image Url",
        :description => "MyText",
        :status => false
      ),
      stub_model(Stadium,
        :name => "Name",
        :city => "City",
        :owner_club => "Owner Club",
        :capacity => 1,
        :image_url => "Image Url",
        :description => "MyText",
        :status => false
      )
    ])
  end

  it "renders a list of stadia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Owner Club".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
