class ChangeNameOfAssociationsTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :associations, :associated_acts
  end
end


