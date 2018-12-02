class Postagem < ApplicationRecord
  belongs_to :user
  
      def self.search(search)
      where("titulo LIKE ?", "%#{search}%")
    end
end
