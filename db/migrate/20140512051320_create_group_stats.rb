class CreateGroupStats < ActiveRecord::Migration
  def change
    create_table :group_stats do |t|
      t.integer :group_id
      t.integer :matches_played
      t.integer :wins
      t.integer :draws
      t.integer :loses
      t.integer :goals_favor
      t.integer :goals_against
      t.integer :points

      t.timestamps
    end
  end
end
