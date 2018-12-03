class Comentafilme < ApplicationRecord
  belongs_to :user
  belongs_to :filme
end
