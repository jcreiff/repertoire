json.extract! song, :id, :title, :artist_id, :key, :high_note, :lyrics, :video, :capo, :status, :last_performed, :created_at, :updated_at
json.url song_url(song, format: :json)
