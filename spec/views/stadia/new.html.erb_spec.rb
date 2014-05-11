require 'spec_helper'

describe "stadia/new" do
  before(:each) do
    assign(:stadium, stub_model(Stadium,
      :name => "MyString",
      :city => "MyString",
      :owner_club => "MyString",
      :capacity => 1,
      :image_url => "MyString",
      :description => "MyText",
      :status => false
    ).as_new_record)
  end

  it "renders new stadium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stadia_path, :method => "post" do
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
