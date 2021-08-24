class RemoveDateFromAlbums < ActiveRecord::Migration[6.1]
  def change
    remove_column :albums, :year, :date
  end
end
