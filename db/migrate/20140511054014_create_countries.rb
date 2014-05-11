class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag_url
      t.string :logo_url

      t.timestamps
    end
  end
end
