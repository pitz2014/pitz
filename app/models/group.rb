class Group < ActiveRecord::Base
  attr_accessible :bracket_id, :name
  
  has_many :matches
  has_many :group_stats
  
  belongs_to :bracket
  
end
