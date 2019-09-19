class UsuariosController < ApplicationController
  def index
    @users = User.all
  end

  def edit
  end

  def avatar
  end
end
