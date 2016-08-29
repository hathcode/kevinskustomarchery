class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :bow_id
      t.string :picture
      t.text :caption

      t.timestamps
    end
  end
end
