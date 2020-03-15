class Genre < ApplicationRecord
    has_many :artists, through: :songs
end
