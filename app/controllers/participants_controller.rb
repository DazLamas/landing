class ParticipantsController < ApplicationController
  def new

  end

  def create
    @participant = Participant.new(participant_params)

    @participant.save
    redirect_to action: 'index', controller: 'home'
  end

  private
  def participant_params
    params.require(:participant).permit(:name, :email)
  end
end
