class RemoveSearchResults < ActiveRecord::Migration[6.0]
  def change
    drop_table :search_results
  end
end
