class LancamentosController < ApplicationController
  def index
     @filmes = Filme.all.order('created_at DESC')
  end
end
