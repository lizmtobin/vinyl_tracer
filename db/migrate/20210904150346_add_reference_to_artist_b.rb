class AddReferenceToArtistB < ActiveRecord::Migration[6.1]
  def change
    add_reference :associated_acts, :artist_b, foreign_key: {to_table: :artists}
  end
end
