class Cinema < ApplicationRecord
 
  
    def self.search(search)
      where("nome LIKE ?", "%#{search}%")
    end

geocoded_by :endereco
after_validation :geocode, if: ->(obj){ obj.endereco.present? and obj.endereco_changed? }


belongs_to :cidade

end
