class RemoveBandMemberFromArtists < ActiveRecord::Migration[6.1]
  def change
    remove_column :artists, :band_members, :string
  end
end
