class MostraController < ApplicationController
  def filme
    @filmes = Filme.where("id = ?", params[:id])
    @comentafilmes = Comentafilme.where("filme_id = ?", params[:id])
    
  end

  def cinema
    @cinemas = Cinema.where("id = ?", params[:id])
   
  end
  def noticia
    @postagems = Postagem.where("id = ?", params[:id])
   
  end
  
  def sessao
    @sessaos = Sessao.where("id = ?", params[:id])
   
  end
  
  
end


