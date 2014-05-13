class Team < ActiveRecord::Base
  
  attr_accessible :appearances, :fifa_ranking, :titles, :country_id, :team_url, :name, :flag_url, :logo_url
  
  belongs_to :country
  has_one :group_stats
  
  has_many :players, dependent: :destroy
  
  has_and_belongs_to_many :matches
  
end
