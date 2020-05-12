class Song < ApplicationRecord
  belongs_to :artist, -> { order(:artist_id) }

  scope :by_title, -> { order(:title) }
  scope :by_date, -> { order(:last_performed) }
  scope :by_status, -> { order(:status) }
  scope :by_artist, -> { order(:name) }

  def embedded_video
    video.sub("watch?v=", "embed/")
  end
end
