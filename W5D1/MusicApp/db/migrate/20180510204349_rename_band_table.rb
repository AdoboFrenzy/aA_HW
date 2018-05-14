class RenameBandTable < ActiveRecord::Migration[5.1]
  def change

      rename_table :bands_tables, :bands
  end
end
