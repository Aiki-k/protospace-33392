class RenameCenceptColumnToPrototypes < ActiveRecord::Migration[6.0]
  def change
    rename_column :prototypes, :cencept, :concept
  end
end
