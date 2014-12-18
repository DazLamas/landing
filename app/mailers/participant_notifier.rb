class ParticipantNotifier < ActionMailer::Base
  default from: "sarah.d.lamas@gmail.com"

  def send_signup_email(participant)
    @participant = participant
    mail( :to => @participant.email,
    :subject => 'Invitation' )
  end
end
