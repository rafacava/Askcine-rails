class BuscaController < ApplicationController
  
  
 def cinemas
    @cinemas = Cinema.all
 end
  
  def filmes
     @filmes = Filme.search(params[:search]).order("created_at DESC")
  end

  


end


