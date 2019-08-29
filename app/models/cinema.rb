class Cinema < ApplicationRecord
 
  
    def self.search(search)
      where("nome LIKE ?", "%#{search}%")
    end

geocoded_by :endereco
after_validation :geocode

belongs_to :cidade

end
