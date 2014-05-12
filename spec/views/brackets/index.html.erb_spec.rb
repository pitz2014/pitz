require 'spec_helper'

describe "brackets/index" do
  before(:each) do
    assign(:brackets, [
      stub_model(Bracket,
        :name => "Name",
        :running => false,
        :over => false
      ),
      stub_model(Bracket,
        :name => "Name",
        :running => false,
        :over => false
      )
    ])
  end

  it "renders a list of brackets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
