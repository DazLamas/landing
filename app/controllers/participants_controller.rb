class ParticipantsController < ApplicationController
 def index
    @last_participant = Participant.last
    render json: @last_participant.id
 end

  def new

  end

  def create
    @participant = Participant.create(
      name: params[:name],
      email: params[:email]
      )

    if  @participant.save
      this_participant = Participant.last
      render json: this_participant.id

    else
      flash.now[:error] = "Fatal Error. Vuelve a introducir los datos"
    end
  end

end
