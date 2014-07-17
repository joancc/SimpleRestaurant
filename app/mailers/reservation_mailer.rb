class ReservationMailer < ActionMailer::Base
  default from: "from@example.com"

  def reservation_notification(user)
    mail(to: user.email, subject: "Reservation confirmation")
  end
end
