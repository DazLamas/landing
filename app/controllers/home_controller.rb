class HomeController < ApplicationController

  def index
    @this_participant = Participant.last
  end

end
