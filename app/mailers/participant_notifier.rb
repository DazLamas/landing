class ParticipantNotifier < ActionMailer::Base
  default from: "invitation@womanwhocode.com"

   # send a signup email to the user, pass in the user object that contains the user's email address
  def send_signup_email(participant)
    @participant = participant
    mail( :to => @participant.email,
    :subject => 'Invitation' )
  end
end
