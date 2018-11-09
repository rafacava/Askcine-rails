class PrincipalController < ApplicationController
  def index
    @filmes = Filme.all.limit(4)
  end
end