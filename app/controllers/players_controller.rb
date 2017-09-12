
class PlayersController < ApplicationController

  def index
    render json: Player.all
  end


  def show
    @player = Player.find(params[:id])
  end


end
