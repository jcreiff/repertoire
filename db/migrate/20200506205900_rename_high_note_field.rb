class RenameHighNoteField < ActiveRecord::Migration[6.0]
  def change
    rename_column :songs, :high_note_string, :high_note
  end
end
