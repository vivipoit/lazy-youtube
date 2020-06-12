class Video < ApplicationRecord
  YOUTUBE_URL = /(http|www.|youtube|yt|.com|watch)/

  validates :name, presence: true
  validates :youtube_id, presence: true
  validates :youtube_id, format: { without: YOUTUBE_URL }
end
