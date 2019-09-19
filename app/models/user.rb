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
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/Paul-18-512.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
