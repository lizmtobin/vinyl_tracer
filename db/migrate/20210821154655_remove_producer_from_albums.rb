class RemoveProducerFromAlbums < ActiveRecord::Migration[6.1]
  def change
    remove_column :albums, :producer, :string
  end
end
