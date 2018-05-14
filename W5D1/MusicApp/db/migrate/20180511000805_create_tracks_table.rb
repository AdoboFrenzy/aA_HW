class CreateTracksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :album_id, null: false
      t.string :title, null: false
      t.integer :ord, null: false
      t.text :lyrics
      t.boolean :regular, null: false #true = regular track, false = bonus track

      t.timestamps
    end

    add_index :tracks, :album_id

  end
end
