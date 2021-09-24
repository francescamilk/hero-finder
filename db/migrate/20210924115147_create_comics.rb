class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.text :description
      t.integer :issueNumber
      t.string :format
      t.integer :pageCount
      t.string :thumbnail

      t.references :serie, foreign_key: true
      t.timestamps
    end
  end
end
