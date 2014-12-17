class FriendsController < ApplicationController
  def index

  end

  def create

    @new_friend = Friend.create(
        participant_id: params[:participant_id],
        friend_name: params[:friend_name],
        friend_email: params[:friend_email]
        )

    if  @new_friend.save
      # redirect_to action: 'index', controller: 'users'
    else
      flash.now[:error] = "Fatal Error. Vuelve a introducir los datos"
    end

  end

end