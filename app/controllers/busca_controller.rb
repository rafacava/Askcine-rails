class BuscaController < ApplicationController
  def filmes
     @filmes = Filme.search(params[:search]).order("created_at DESC")
  end

  def cinemas
     @cinemas = Cinema.search(params[:search])
  end
  
   def postagems
     @postagems = Postagem.search(params[:search]).order("created_at DESC")
  end


end


