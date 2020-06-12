class Video < ApplicationRecord
  validates :name, presence: true
  validates :youtube_id, presence: true
end
