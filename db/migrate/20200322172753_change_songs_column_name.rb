class ChangeSongsColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :song_id, :genre_id
  end
end
