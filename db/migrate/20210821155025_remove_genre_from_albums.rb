class RemoveGenreFromAlbums < ActiveRecord::Migration[6.1]
  def change
    remove_column :albums, :genre, :string
  end
end
