class Actor < ApplicationRecord
    has_many :bodytype
    has_many :features, through: :bodytype

    has_many :movies
    has_many :genres, through: :movies
end
