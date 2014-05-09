class NotificationsMailer < ActionMailer::Base
  default :from => "cubodeled.info@gmail.com"
  default :to => "cubodeled.admin@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Cubo de leds - Peticion de contacto: #{message.Nombre}")
  end
end
