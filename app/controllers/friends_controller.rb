class FriendsController < ApplicationController
  def index

  end

  def create

    @friend = Friend.create(
        participant_id: params[:participant_id],
        friend_name: params[:friend_name],
        friend_email: params[:friend_email]
        )

    if  @friend.save
      # Deliver the signup email
      FriendNotifier.send_signup_email(@friend).deliver

    else
      flash.now[:error] = "Fatal Error. Vuelve a introducir los datos"
    end

  end

end