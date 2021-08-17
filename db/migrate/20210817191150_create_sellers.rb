class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers do |t|
      t.string :seller_name
      t.string :location
      t.string :seller_url
      t.integer :rating

      t.timestamps
    end
  end
end
