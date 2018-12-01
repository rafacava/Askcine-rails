class BuscaController < ApplicationController
  def filmes
     @filmes = Filme.search(params[:search]).order("created_at DESC")
  end

  def index
     @cinemas = Cinema.search(params[:search])
  end


end


