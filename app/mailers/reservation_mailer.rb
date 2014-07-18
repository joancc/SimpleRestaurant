class ReservationMailer < ActionMailer::Base
  default from: "from@example.com"

  def reservation_notification(user, reservation)
    @reservation = reservation
    mail(to: "#{user.name} <#{user.email}>", subject: "Reservation confirmation")

  end
end
