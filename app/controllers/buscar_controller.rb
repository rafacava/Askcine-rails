class BuscarController < ApplicationController
require 'will_paginate/array'  
  def cinemas
    @cinemas = Cinema.all
    if params[:search]
      @cinemas = Cinema.search(params[:search])
    else
      @cinemas = Cinema.all
    end
  end
    

  def filme
      @filmes = []
      Filme.all.each do |filme|
        @filmes.push(filme)
      end
     @filmes = Filme.paginate(page: params[:page], :per_page => 3)
    if params[:search]
      @filmes = Filme.search(params[:search]).paginate(:page => params[:page], :per_page => 2)
    else
      @filmes = []
      Filme.all.each do |filme|
        @filmes.push(filme)
      end
     @filmes = Filme.paginate(page: params[:page], :per_page => 3)
    end
  end
end
