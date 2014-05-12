require 'spec_helper'

describe "brackets/new" do
  before(:each) do
    assign(:bracket, stub_model(Bracket,
      :name => "MyString",
      :running => false,
      :over => false
    ).as_new_record)
  end

  it "renders new bracket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brackets_path, :method => "post" do
      assert_select "input#bracket_name", :name => "bracket[name]"
      assert_select "input#bracket_running", :name => "bracket[running]"
      assert_select "input#bracket_over", :name => "bracket[over]"
    end
  end
end
