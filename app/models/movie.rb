class Movie < ApplicationRecord
  belongs_to :actor
  belongs_to :genre
end
