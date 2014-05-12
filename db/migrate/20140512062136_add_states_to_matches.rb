class AddStatesToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :playing, :boolean
    add_column :matches, :played, :boolean
  end
end
