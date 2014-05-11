require 'spec_helper'

describe "teams/new" do
  before(:each) do
    assign(:team, stub_model(Team,
      :appearances => 1,
      :titles => 1,
      :fifa_ranking => 1
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path, :method => "post" do
      assert_select "input#team_appearances", :name => "team[appearances]"
      assert_select "input#team_titles", :name => "team[titles]"
      assert_select "input#team_fifa_ranking", :name => "team[fifa_ranking]"
    end
  end
end
