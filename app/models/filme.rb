class Filme < ApplicationRecord
        
    def self.search(search)
      where("nome LIKE ?", "%#{search}%")
    end
end
