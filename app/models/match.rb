class Match < ActiveRecord::Base
  attr_accessible :date, :stadium_id, :playing, :played
  
  belongs_to :group
  
  has_one :stadium
  
end
