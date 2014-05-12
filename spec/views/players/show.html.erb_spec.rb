require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :team_id => 1,
      :name => "Name",
      :appearances => 2,
      :career_goals => 3,
      :avatar_url => "Avatar Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Avatar Url/)
  end
end
