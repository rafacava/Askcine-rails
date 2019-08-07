class Filme < ApplicationRecord
    has_many :commentfilms
    def self.search(search)
      where("nome LIKE ?", "%#{search}%")
    end
    ratyrate_rateable 'nome'
end
