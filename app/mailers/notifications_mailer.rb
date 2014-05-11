class NotificationsMailer < ActionMailer::Base
  default :from => "cubodeledsproyect@gmail.com"
  default :to => "cubodeledsproyect@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Cubo de leds - Peticion de contacto: #{message.Nombre}")
  end
end
