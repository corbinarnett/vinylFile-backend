class Album < ApplicationRecord
  has_many :reviews
  validates :artist, :label, :release_date, :img_url, presence: true
end
