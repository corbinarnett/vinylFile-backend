class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :label, :release_date, :image_url
  has_many :reviews
end
