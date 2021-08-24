class AddTracksToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :tracks, :text, array: true, default: []
  end
end
