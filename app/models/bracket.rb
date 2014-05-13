class Bracket < ActiveRecord::Base
  attr_accessible :name, :over, :running
  
  has_many :groups
  
end
