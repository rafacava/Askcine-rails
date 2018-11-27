class SessosController < ApplicationController
  before_action :set_sesso, only: [:show, :edit, :update, :destroy]

  # GET /sessos
  # GET /sessos.json
  def index
    @sessos = Sesso.all
  end

  # GET /sessos/1
  # GET /sessos/1.json
  def show
  end

  # GET /sessos/new
  def new
    @sesso = Sesso.new
  end

  # GET /sessos/1/edit
  def edit
  end

  # POST /sessos
  # POST /sessos.json
  def create
    @sesso = Sesso.new(sesso_params)

    respond_to do |format|
      if @sesso.save
        format.html { redirect_to @sesso, notice: 'Sesso was successfully created.' }
        format.json { render :show, status: :created, location: @sesso }
      else
        format.html { render :new }
        format.json { render json: @sesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessos/1
  # PATCH/PUT /sessos/1.json
  def update
    respond_to do |format|
      if @sesso.update(sesso_params)
        format.html { redirect_to @sesso, notice: 'Sesso was successfully updated.' }
        format.json { render :show, status: :ok, location: @sesso }
      else
        format.html { render :edit }
        format.json { render json: @sesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessos/1
  # DELETE /sessos/1.json
  def destroy
    @sesso.destroy
    respond_to do |format|
      format.html { redirect_to sessos_url, notice: 'Sesso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sesso
      @sesso = Sesso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sesso_params
      params.require(:sesso).permit(:dia, :horario, :cinema_id, :filme_id)
    end
end
