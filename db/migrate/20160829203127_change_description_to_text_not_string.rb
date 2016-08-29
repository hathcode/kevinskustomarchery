class ChangeDescriptionToTextNotString < ActiveRecord::Migration
  def change
    remove_column :bows, :description, :string
    add_column :bows, :description, :text
  end
end
