class Cinema < ApplicationRecord
  belongs_to :cidade
  
def self.search(search)
  where("nome LIKE ?", "%#{search}%")
end
end
