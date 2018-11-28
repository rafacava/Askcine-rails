class DestaquesController < ApplicationController
  before_action :set_destaque, only: [:show, :edit, :update, :destroy]

  # GET /destaques
  # GET /destaques.json
  def index
    @destaques = Destaque.all
  end

  # GET /destaques/1
  # GET /destaques/1.json
  def show
  end

  # GET /destaques/new
  def new
    @destaque = Destaque.new
  end

  # GET /destaques/1/edit
  def edit
  end

  # POST /destaques
  # POST /destaques.json
  def create
    @destaque = Destaque.new(destaque_params)

    respond_to do |format|
      if @destaque.save
        format.html { redirect_to @destaque, notice: 'Destaque was successfully created.' }
        format.json { render :show, status: :created, location: @destaque }
      else
        format.html { render :new }
        format.json { render json: @destaque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destaques/1
  # PATCH/PUT /destaques/1.json
  def update
    respond_to do |format|
      if @destaque.update(destaque_params)
        format.html { redirect_to @destaque, notice: 'Destaque was successfully updated.' }
        format.json { render :show, status: :ok, location: @destaque }
      else
        format.html { render :edit }
        format.json { render json: @destaque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destaques/1
  # DELETE /destaques/1.json
  def destroy
    @destaque.destroy
    respond_to do |format|
      format.html { redirect_to destaques_url, notice: 'Destaque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destaque
      @destaque = Destaque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destaque_params
      params.require(:destaque).permit(:titulo, :imagem)
    end
end
