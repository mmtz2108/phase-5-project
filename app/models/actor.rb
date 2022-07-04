class Actor < ApplicationRecord
    has_many :bodytype
    has_many :features, through: :bodytype
end
