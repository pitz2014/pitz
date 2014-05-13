class Match < ActiveRecord::Base
  attr_accessible :date, :stadium_id, :playing, :played
  
  belongs_to :group
  
  has_and_belongs_to_many :teams, :uniq => true
  
  has_one :stadium
  
  after_save :team_validation

  private
    def team_validation
      if teams.count > 2
        errors.add(:match, "cant have more then two teams")
        return false
      end
      if teams.count < 1
        errors.add(:match, "must have two teams")
        return false
      end
    end
  
end
