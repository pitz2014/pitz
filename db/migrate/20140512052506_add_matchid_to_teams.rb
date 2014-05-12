class AddMatchidToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :match_id, :integer
  end
end
