class FriendsController < ApplicationController
  def index

  end

  def create

    # @new_friend = Friend.new(
    #   friend_name: params[:friend_name],
    #   friend_email: params[:friend_email],
    #   participant_id: @participant_id
    # )

    @new_friend = Friend.create(
        friend_name: params[:friend_name], friend_email: params[:friend_email]
        )

    # @new_friend = Friend.new(friend_params)

    @new_friend.save
    redirect_to action: 'index', controller: 'home'

  end

# private
#   def friend_params

#     @participant_id = Participant.last.id

#     params = ActionController::Parameters.new({
#       friend: {
#         :friend_name =>,
#         :friend_email =>,
#         participant_id: @participant_id
#       }
#     })

#     params.require(:friend).permit(
#       :friend_name,
#       :friend_email,
#       :participant_id)
#   end
end