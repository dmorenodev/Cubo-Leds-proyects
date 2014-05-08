class VideeoosController < ApplicationController
  before_action :set_videeoo, only: [:show, :edit, :update, :destroy]

  # GET /videeoos
  # GET /videeoos.json
  def index
    @videeoos = Videeoo.all
  end

  # GET /videeoos/1
  # GET /videeoos/1.json
  def show
  end

  # GET /videeoos/new
  def new
    @videeoo = Videeoo.new
  end

  # GET /videeoos/1/edit
  def edit
  end

  # POST /videeoos
  # POST /videeoos.json
  def create
    @videeoo = Videeoo.new(videeoo_params)

    respond_to do |format|
      if @videeoo.save
        format.html { redirect_to @videeoo, notice: 'Videeoo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @videeoo }
      else
        format.html { render action: 'new' }
        format.json { render json: @videeoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videeoos/1
  # PATCH/PUT /videeoos/1.json
  def update
    respond_to do |format|
      if @videeoo.update(videeoo_params)
        format.html { redirect_to @videeoo, notice: 'Videeoo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @videeoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videeoos/1
  # DELETE /videeoos/1.json
  def destroy
    @videeoo.destroy
    respond_to do |format|
      format.html { redirect_to videeoos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videeoo
      @videeoo = Videeoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videeoo_params
      params.require(:videeoo).permit(:Titulo, :Descripcion, :Url, :Subido_por)
    end
end
