class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.date :birth_date
      t.integer :appearances
      t.integer :career_goals
      t.string :avatar_url

      t.timestamps
    end
  end
end
