require 'spec_helper'

describe "countries/index" do
  before(:each) do
    assign(:countries, [
      stub_model(Country,
        :name => "Name",
        :flag_url => "Flag Url",
        :logo_url => "Logo Url"
      ),
      stub_model(Country,
        :name => "Name",
        :flag_url => "Flag Url",
        :logo_url => "Logo Url"
      )
    ])
  end

  it "renders a list of countries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Flag Url".to_s, :count => 2
    assert_select "tr>td", :text => "Logo Url".to_s, :count => 2
  end
end
