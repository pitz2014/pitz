require 'spec_helper'

describe "countries/edit" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :name => "MyString",
      :flag_url => "MyString",
      :logo_url => "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => countries_path(@country), :method => "post" do
      assert_select "input#country_name", :name => "country[name]"
      assert_select "input#country_flag_url", :name => "country[flag_url]"
      assert_select "input#country_logo_url", :name => "country[logo_url]"
    end
  end
end
