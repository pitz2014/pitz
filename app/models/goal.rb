class Goal < ActiveRecord::Base
  attr_accessible :date_time, :match_id, :player_id
  
  belongs_to :player
  belongs_to :match
  
end
