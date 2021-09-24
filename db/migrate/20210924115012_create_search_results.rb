class CreateSearchResults < ActiveRecord::Migration[6.0]
  def change
    create_table :search_results do |t|

      t.timestamps
    end
  end
end
