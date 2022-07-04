class Feature < ApplicationRecord
    has_many :bodytypes
    has_many :actors, through: :bodytypes
end
