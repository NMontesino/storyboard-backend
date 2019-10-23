class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :content
      t.string :mood
      t.integer :mood_rating
      t.string :photo_url
      t.belongs_to :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
