class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :artist_id
      t.string :key
      t.string :high_note_string
      t.text :lyrics
      t.string :video
      t.string :capo
      t.string :status
      t.date :last_performed

      t.timestamps
    end
  end
end
