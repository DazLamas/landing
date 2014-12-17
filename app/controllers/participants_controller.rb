class ParticipantsController < ApplicationController
  def new

  end

  def create
    @participant = Participant.create(
      name: params[:name],
      email: params[:email]
      )

    if  @participant.save
      # redirect_to action: 'index', controller: 'users'
    else
      flash.now[:error] = "Fatal Error. Vuelve a introducir los datos"
    end
  end

end
