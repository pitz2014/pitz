class CreateBrackets < ActiveRecord::Migration
  def change
    create_table :brackets do |t|
      t.string :name
      t.boolean :running
      t.boolean :over

      t.timestamps
    end
  end
end
