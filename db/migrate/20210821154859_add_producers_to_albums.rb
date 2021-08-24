class AddProducersToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :producers, :text, array: true, default: []
  end
end
