class AddBandMembersToArtists < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :band_members, :text, array: true, default: []
  end
end
