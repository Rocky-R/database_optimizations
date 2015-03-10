class SendMailer < ApplicationMailer
  def confirmation(address)
    @address = address
    mail(to: address, subject: 'Your page is ready for viewing')
  end
end
