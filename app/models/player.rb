class Player < ActiveRecord::Base
  
  attr_accessible :appearances, :avatar_url, :birth_date, :career_goals, :name, :team_id
  
  belongs_to :team
  
end
