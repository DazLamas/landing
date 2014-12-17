class ParticipantsController < ApplicationController
  def new

  end

  def create
    @participant = Participant.create(
      name: params[:name], email: params[:email]
      )

    if  @participant.save
      # redirect_to action: 'index', controller: 'users'
    else
      flash.now[:error] = "Fatal Error. Vuelve a introducir los datos"
      render  'index'
    end
  end

#   private
#   def participant_params
#     params.require(:participant).permit(:name, :email)
#   end
end
