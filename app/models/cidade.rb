class Cidade < ApplicationRecord
    has_many :cinemas
    geocoded_by :nome
    after_validation :geocode
end
