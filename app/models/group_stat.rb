class GroupStat < ActiveRecord::Base
  attr_accessible :draws, :goals_against, :goals_favor, :group_id, :team_id, :loses, :matches_played, :points, :wins
  
  belongs_to :group
  
  belongs_to :team
  
end
