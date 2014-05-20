class ImagenesController < ApplicationController
  before_action :set_imagene, only: [:show, :edit, :update, :destroy]

  # GET /imagenes
  # GET /imagenes.json
  def index
    @imagenes = Imagene.all
  end

  # GET /imagenes/1
  # GET /imagenes/1.json
  def show
  end

  # GET /imagenes/new
  def new
    @imagene = Imagene.new
  end

  # GET /imagenes/1/edit
  def edit
  end

  # POST /imagenes
  # POST /imagenes.json
  def create
    @imagene = Imagene.new(imagene_params)

    respond_to do |format|
      if @imagene.save
        format.html { redirect_to @imagene, notice: 'Imagene was successfully created.' }
        format.json { render action: 'show', status: :created, location: @imagene }
      else
        format.html { render action: 'new' }
        format.json { render json: @imagene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagenes/1
  # PATCH/PUT /imagenes/1.json
  def update
    respond_to do |format|
      if @imagene.update(imagene_params)
        format.html { redirect_to @imagene, notice: 'Imagene was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @imagene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagenes/1
  # DELETE /imagenes/1.json
  def destroy
    @imagene.destroy
    respond_to do |format|
      format.html { redirect_to imagenes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagene
      @imagene = Imagene.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagene_params
      params.require(:imagene).permit(:texto, :description, :image)
    end
end
