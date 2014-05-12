require 'spec_helper'

describe "brackets/edit" do
  before(:each) do
    @bracket = assign(:bracket, stub_model(Bracket,
      :name => "MyString",
      :running => false,
      :over => false
    ))
  end

  it "renders the edit bracket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brackets_path(@bracket), :method => "post" do
      assert_select "input#bracket_name", :name => "bracket[name]"
      assert_select "input#bracket_running", :name => "bracket[running]"
      assert_select "input#bracket_over", :name => "bracket[over]"
    end
  end
end
