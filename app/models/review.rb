class Review < ApplicationRecord
  belongs_to :album
  validates :content, :username, :rating, presence: true
end
