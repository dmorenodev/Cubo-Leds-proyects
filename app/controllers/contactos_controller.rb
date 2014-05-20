class ContactosController < ApplicationController


  def new
    @contacto = Contacto.new
  end


  def create
    @contacto = Contacto.new(contacto_params)

    if @contacto.valid?
      NotificationsMailer.new_message(@contacto).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacto_params
      params.require(:contacto).permit(:Nombre, :Email, :Asunto, :Body)
    end
end
