class Cinema < ApplicationRecord
 
  
    def self.search(search)
      where("nome LIKE ?", "%#{search}%")
    end



belongs_to :cidade

end
