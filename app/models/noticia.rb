class Noticia < ApplicationRecord
    
        def self.search(search)
      where("nome LIKE ?", "%#{search}%")
    end
    
    
  belongs_to :user
end
