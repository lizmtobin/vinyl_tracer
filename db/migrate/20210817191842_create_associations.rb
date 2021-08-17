class CreateAssociations < ActiveRecord::Migration[6.1]
  def change
    create_table :associations do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true
      t.text :connection_description

      t.timestamps
    end
  end
end
