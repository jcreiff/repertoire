class Song < ApplicationRecord
  belongs_to :artist

  scope :by_title, -> { order(:title) }
  scope :by_date, -> { order(:last_performed) }
  scope :by_status, -> { order(:status) }
end
