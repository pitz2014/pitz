class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :appearances
      t.integer :titles
      t.integer :fifa_ranking

      t.timestamps
    end
  end
end
