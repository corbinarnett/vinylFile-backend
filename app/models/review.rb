class Review < ApplicationRecord
  belongs_to :album
  validates :content, :username, :rating, presence: true
  validates_inclusion_of :rating, :in => 1.0..10.0
end
