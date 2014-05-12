class Team < ActiveRecord::Base
  
  attr_accessible :appearances, :fifa_ranking, :titles, :country_id, :group_stats_id, :team_url
  
  belongs_to :country
  belongs_to :group_stats
  
  has_many :players, dependent: :destroy
  has_many :matches
  
end
