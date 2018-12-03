class BuscarController < ApplicationController
  def cinemas
    
    @cinemas = Cinema.all
    if params[:search]
      @cinemas = Cinema.search(params[:search])
    else
      @cinemas = Cinema.all
    end
  end
    

  def filme
    @filmes = Filme.all
    if params[:search]
      @filmes = Filme.search(params[:search])
    else
      @filmes = Filme.all
    end
  end
end
