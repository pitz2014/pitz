class Stadium < ActiveRecord::Base
  
  attr_accessible :capacity, :city, :description, :image_url, :name, :owner_club, :status
  
  has_many :matches
  
  validates :capacity, :city, :description, :image_url, :name, :owner_club, :presence => true
  
  validates :capacity, :numericality => {:greather_than_or_equal_to => 1}
  
  validates :name, :uniqueness => true
  
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }  
    
end
