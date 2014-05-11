class AddCountryDependencyToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :belongs_to, :country
  end
end
