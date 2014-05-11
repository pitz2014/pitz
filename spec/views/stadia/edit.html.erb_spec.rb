require 'spec_helper'

describe "stadia/edit" do
  before(:each) do
    @stadium = assign(:stadium, stub_model(Stadium,
      :name => "MyString",
      :city => "MyString",
      :owner_club => "MyString",
      :capacity => 1,
      :image_url => "MyString",
      :description => "MyText",
      :status => false
    ))
  end

  it "renders the edit stadium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stadia_path(@stadium), :method => "post" do
      assert_select "input#stadium_name", :name => "stadium[name]"
      assert_select "input#stadium_city", :name => "stadium[city]"
      assert_select "input#stadium_owner_club", :name => "stadium[owner_club]"
      assert_select "input#stadium_capacity", :name => "stadium[capacity]"
      assert_select "input#stadium_image_url", :name => "stadium[image_url]"
      assert_select "textarea#stadium_description", :name => "stadium[description]"
      assert_select "input#stadium_status", :name => "stadium[status]"
    end
  end
end
