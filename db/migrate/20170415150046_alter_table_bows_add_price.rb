class AlterTableBowsAddPrice < ActiveRecord::Migration
  def change
  	add_column :bows, :price, :integer
  end
end
