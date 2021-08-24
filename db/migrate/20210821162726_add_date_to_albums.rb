class AddDateToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :year, :string
  end
end
