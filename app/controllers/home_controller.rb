class HomeController < ApplicationController

  def index
    @participant = Participant.all
  end

end
