class PrincipalController < ApplicationController
  def index
    @filmes = Filme.all.limit(4).order('created_at DESC')
    @destaques = Destaque.all.limit(4).order('created_at DESC')
  end
end