require 'spec_helper'

describe "group_stats/index" do
  before(:each) do
    assign(:group_stats, [
      stub_model(GroupStat,
        :group_id => 1,
        :matches_played => 2,
        :wins => 3,
        :draws => 4,
        :loses => 5,
        :goals_favor => 6,
        :goals_against => 7,
        :points => 8
      ),
      stub_model(GroupStat,
        :group_id => 1,
        :matches_played => 2,
        :wins => 3,
        :draws => 4,
        :loses => 5,
        :goals_favor => 6,
        :goals_against => 7,
        :points => 8
      )
    ])
  end

  it "renders a list of group_stats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
  end
end
