class AddBowsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :bows, :integer
  end
end
