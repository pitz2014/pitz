require 'spec_helper'

describe "teams/show" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :appearances => 1,
      :titles => 2,
      :fifa_ranking => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
