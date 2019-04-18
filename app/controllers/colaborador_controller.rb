class ColaboradorController < ApplicationController
  include Devise::Controllers::Helpers 
  def portal
  end

  def novo
  end

  def noticias
    @postagems = Postagem.where(user:current_user.id)
  end
end
