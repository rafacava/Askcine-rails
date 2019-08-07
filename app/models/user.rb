class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  ratyrate_rater       
  
  has_many :commentfilms
  def username
    return self.email.split('@')[0].capitalize
  end
end
