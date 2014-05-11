require 'spec_helper'

describe "countries/new" do
  before(:each) do
    assign(:country, stub_model(Country,
      :name => "MyString",
      :flag_url => "MyString",
      :logo_url => "MyString"
    ).as_new_record)
  end

  it "renders new country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => countries_path, :method => "post" do
      assert_select "input#country_name", :name => "country[name]"
      assert_select "input#country_flag_url", :name => "country[flag_url]"
      assert_select "input#country_logo_url", :name => "country[logo_url]"
    end
  end
end
