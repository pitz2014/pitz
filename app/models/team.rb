class Team < ActiveRecord::Base
  attr_accessible :appearances, :fifa_ranking, :titles
  
  belongs_to :country
  
end
