class Sessao < ApplicationRecord
  belongs_to :cinema
  belongs_to :filme
end
