class AddTeamidToGroupStats < ActiveRecord::Migration
  def change
    add_column :group_stats, :team_id, :integer
  end
end
