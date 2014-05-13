class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :appearances
      t.integer :titles
      t.integer :fifa_ranking
      t.string :name
      t.string :flag_url
      t.string :logo_url

      t.timestamps
    end
  end
end
