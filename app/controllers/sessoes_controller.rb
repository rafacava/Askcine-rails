class SessoesController < ApplicationController
  def filme
    @sessaos = Sessao.where(filme: params[:id])
  end

  def cinema
    @sessaos = Sessao.where(cinema: params[:id])
  end
end
