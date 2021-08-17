class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :band_members

      t.timestamps
    end
  end
end
