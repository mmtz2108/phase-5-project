class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_year
  has_one :actor
  has_one :genre
end
