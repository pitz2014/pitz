class AddImageGroupstatsToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :group_stats_id, :integer
    add_column :teams, :team_url, :string
  end
end
