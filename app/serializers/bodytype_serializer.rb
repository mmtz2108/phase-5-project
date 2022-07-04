class BodytypeSerializer < ActiveModel::Serializer
  attributes :id, :type
  has_one :actor
  has_one :feature
end
