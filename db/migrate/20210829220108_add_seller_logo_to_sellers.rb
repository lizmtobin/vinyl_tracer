class AddSellerLogoToSellers < ActiveRecord::Migration[6.1]
  def change
    add_column :sellers, :seller_logo, :string
  end
end
