require 'spec_helper'

describe "group_stats/edit" do
  before(:each) do
    @group_stat = assign(:group_stat, stub_model(GroupStat,
      :group_id => 1,
      :matches_played => 1,
      :wins => 1,
      :draws => 1,
      :loses => 1,
      :goals_favor => 1,
      :goals_against => 1,
      :points => 1
    ))
  end

  it "renders the edit group_stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => group_stats_path(@group_stat), :method => "post" do
      assert_select "input#group_stat_group_id", :name => "group_stat[group_id]"
      assert_select "input#group_stat_matches_played", :name => "group_stat[matches_played]"
      assert_select "input#group_stat_wins", :name => "group_stat[wins]"
      assert_select "input#group_stat_draws", :name => "group_stat[draws]"
      assert_select "input#group_stat_loses", :name => "group_stat[loses]"
      assert_select "input#group_stat_goals_favor", :name => "group_stat[goals_favor]"
      assert_select "input#group_stat_goals_against", :name => "group_stat[goals_against]"
      assert_select "input#group_stat_points", :name => "group_stat[points]"
    end
  end
end
