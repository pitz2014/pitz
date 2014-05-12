class GroupStat < ActiveRecord::Base
  attr_accessible :draws, :goals_against, :goals_favor, :group_id, :loses, :matches_played, :points, :wins
  
  belongs_to :group
  
  has_one :team
  
end
