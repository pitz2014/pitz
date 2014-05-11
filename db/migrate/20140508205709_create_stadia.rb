class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :city
      t.string :owner_club
      t.integer :capacity
      t.string :image_url
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
