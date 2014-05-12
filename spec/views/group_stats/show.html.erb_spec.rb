require 'spec_helper'

describe "group_stats/show" do
  before(:each) do
    @group_stat = assign(:group_stat, stub_model(GroupStat,
      :group_id => 1,
      :matches_played => 2,
      :wins => 3,
      :draws => 4,
      :loses => 5,
      :goals_favor => 6,
      :goals_against => 7,
      :points => 8
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
  end
end
