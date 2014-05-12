class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.timestamp :date_time
      t.integer :player_id
      t.integer :match_id

      t.timestamps
    end
  end
end
