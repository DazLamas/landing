class FriendsController < ApplicationController
  def index

  end

  def create

    @new_friend = Friend.new(friend_params)

    @new_friend.save
    redirect_to action: 'index', controller: 'home'

  end

private
  def friend_params
    params.require(:friend).permit(:friend_name, :friend_email)
  end
end
