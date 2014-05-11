class Country < ActiveRecord::Base
  attr_accessible :flag_url, :logo_url, :name
  
  has_one :team, dependent: :destroy
  
end
