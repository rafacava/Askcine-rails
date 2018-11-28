class PostagemsController < ApplicationController
  before_action :set_postagem, only: [:show, :edit, :update, :destroy]

  # GET /postagems
  # GET /postagems.json
  def index
    @postagems = Postagem.all
  end

  # GET /postagems/1
  # GET /postagems/1.json
  def show
  end

  # GET /postagems/new
  def new
    @postagem = Postagem.new
  end

  # GET /postagems/1/edit
  def edit
  end

  # POST /postagems
  # POST /postagems.json
  def create
    @postagem = Postagem.new(postagem_params)
    @postagem.user = current_user
    respond_to do |format|
      if @postagem.save
        format.html { redirect_to @postagem, notice: 'Postagem was successfully created.' }
        format.json { render :show, status: :created, location: @postagem }
      else
        format.html { render :new }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postagems/1
  # PATCH/PUT /postagems/1.json
  def update
    respond_to do |format|
      if @postagem.update(postagem_params)
        format.html { redirect_to @postagem, notice: 'Postagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @postagem }
      else
        format.html { render :edit }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postagems/1
  # DELETE /postagems/1.json
  def destroy
    @postagem.destroy
    respond_to do |format|
      format.html { redirect_to postagems_url, notice: 'Postagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postagem
      @postagem = Postagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postagem_params
      params.require(:postagem).permit(:titulo, :conteudo, :imagem)
    end
end
