class CreateBows < ActiveRecord::Migration
  def change
    create_table :bows do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
