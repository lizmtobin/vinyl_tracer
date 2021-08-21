class AddGenreToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :genre, :text, array: true, default: []
  end
end
