class SessaosController < ApplicationController
  before_action :set_sessao, only: [:show, :edit, :update, :destroy]

  # GET /sessaos
  # GET /sessaos.json
  def index
    @sessaos = Sessao.all
  end

  # GET /sessaos/1
  # GET /sessaos/1.json
  def show
  end

  # GET /sessaos/new
  def new
    @sessao = Sessao.new
  end

  # GET /sessaos/1/edit
  def edit
  end

  # POST /sessaos
  # POST /sessaos.json
  def create
    @sessao = Sessao.new(sessao_params)

    respond_to do |format|
      if @sessao.save
        format.html { redirect_to @sessao, notice: 'Sessao was successfully created.' }
        format.json { render :show, status: :created, location: @sessao }
      else
        format.html { render :new }
        format.json { render json: @sessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessaos/1
  # PATCH/PUT /sessaos/1.json
  def update
    respond_to do |format|
      if @sessao.update(sessao_params)
        format.html { redirect_to @sessao, notice: 'Sessao was successfully updated.' }
        format.json { render :show, status: :ok, location: @sessao }
      else
        format.html { render :edit }
        format.json { render json: @sessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessaos/1
  # DELETE /sessaos/1.json
  def destroy
    @sessao.destroy
    respond_to do |format|
      format.html { redirect_to sessaos_url, notice: 'Sessao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sessao
      @sessao = Sessao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sessao_params
      params.require(:sessao).permit(:dia, :horario, :status, :cinema_id, :filme_id)
    end
end
