class MailSender
  @queue = :mail_sender_queue

  def self.perform(user, reservation)
    ReservationMailer.reservation_notification(user, reservation).deliver
  end
end