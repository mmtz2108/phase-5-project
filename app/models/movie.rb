class Movie < ApplicationRecord
  has_many :actors
  has_one :genre
end
