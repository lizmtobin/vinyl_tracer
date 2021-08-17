class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :album_name
      t.date :year
      t.string :artwork_url
      t.string :producer
      t.string :record_label
      t.references :seller, null: false, foreign_key: true
      t.string :genre

      t.timestamps
    end
  end
end
