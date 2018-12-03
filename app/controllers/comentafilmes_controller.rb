class ComentafilmesController < ApplicationController
  before_action :set_comentafilme, only: [:show, :edit, :update, :destroy]

  # GET /comentafilmes
  # GET /comentafilmes.json
  def index
    @comentafilmes = Comentafilme.all
  end

  # GET /comentafilmes/1
  # GET /comentafilmes/1.json
  def show
  end

  # GET /comentafilmes/new
  def new
    @comentafilme = Comentafilme.new
  end

  # GET /comentafilmes/1/edit
  def edit
  end

  # POST /comentafilmes
  # POST /comentafilmes.json
  def create
    @comentafilme = Comentafilme.new(comentafilme_params)
    @comentafilme.user = current_user
    
    respond_to do |format|
      if @comentafilme.save
        format.html { redirect_to @comentafilme, notice: 'Comentafilme was successfully created.' }
        format.json { render :show, status: :created, location: @comentafilme }
      else
        format.html { render :new }
        format.json { render json: @comentafilme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comentafilmes/1
  # PATCH/PUT /comentafilmes/1.json
  def update
    respond_to do |format|
      if @comentafilme.update(comentafilme_params)
        format.html { redirect_to @comentafilme, notice: 'Comentafilme was successfully updated.' }
        format.json { render :show, status: :ok, location: @comentafilme }
      else
        format.html { render :edit }
        format.json { render json: @comentafilme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentafilmes/1
  # DELETE /comentafilmes/1.json
  def destroy
    @comentafilme.destroy
    respond_to do |format|
      format.html { redirect_to comentafilmes_url, notice: 'Comentafilme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentafilme
      @comentafilme = Comentafilme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentafilme_params
      params.require(:comentafilme).permit(:filme_id, :titulo, :comentario)
    end
end
