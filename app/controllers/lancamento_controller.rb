class LancamentoController < ApplicationController
  def filmes
     @filmes = Filme.all.order('created_at DESC')
  end

  def postagens
    @postagems = Postagem.all.order('created_at DESC')
  end
end
