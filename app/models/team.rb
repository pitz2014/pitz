class Team < ActiveRecord::Base
  attr_accessible :appearances, :fifa_ranking, :titles, :country_id
  
  belongs_to :country
  
end
