class TeamsController < ApplicationController

  def index
    
    if params[:league_id]

      @teams = League.find(params[:league_id]).teams.all
      render json: @teams
    else
      render json: Team.all
    end
  end

  def show
    render json: Team.find(params[:id])
  end

  def new

  end

  def create

  end

  def update
  end

  def destroy

  end


end
