class Album < ApplicationRecord
  has_many :reviews
  validates :artist, :label, :release_date, :image_url, presence: true
end
