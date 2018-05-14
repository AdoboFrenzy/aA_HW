class CreateAlbumsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :band_id, null: false
      t.string :title, null: false
      t.date :year, null: false
      t.boolean :live, null: false #true = live album, false = studio album

      t.timestamps
    end

    add_index :albums, :band_id
  end
end
