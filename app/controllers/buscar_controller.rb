class BuscarController < ApplicationController
  def cinemas
    @cinemas = Cinema.all
  end

  def filme
  end
end
