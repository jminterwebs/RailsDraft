
class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update]

  def index
    render json: Player.all
  end


  def show
    render json: @player
  end

  def update
    @player.update(team_id:params[:team_id])
  end


  private

  def set_player
    @player = Player.find(params[:id])
  end


end
