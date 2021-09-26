class RemoveUnusedTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :characters
    drop_table :comics
    drop_table :series
  end
end
