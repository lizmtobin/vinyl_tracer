class AddMapToSellers < ActiveRecord::Migration[6.1]
  def change
    add_column :sellers, :map, :string
  end
end
