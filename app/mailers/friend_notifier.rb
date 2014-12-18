class FriendNotifier < ActionMailer::Base
  default from: "invitation@womanwhocode.com"

  def send_signup_email(friend)
    @friend = friend
    mail( :to => @friend.friend_email,
    :subject => 'Invitation' )
  end
end
