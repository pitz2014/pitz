require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :team_id => 1,
      :name => "MyString",
      :appearances => 1,
      :career_goals => 1,
      :avatar_url => "MyString"
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path, :method => "post" do
      assert_select "input#player_team_id", :name => "player[team_id]"
      assert_select "input#player_name", :name => "player[name]"
      assert_select "input#player_appearances", :name => "player[appearances]"
      assert_select "input#player_career_goals", :name => "player[career_goals]"
      assert_select "input#player_avatar_url", :name => "player[avatar_url]"
    end
  end
end
