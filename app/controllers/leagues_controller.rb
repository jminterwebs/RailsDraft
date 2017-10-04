class LeaguesController < ApplicationController
  before_action :set_league, only: :show

  def index
    render json: League.all
  end

  def show
    render json: @league
  end

  def new
    @league = League.new
    @league.build_teams

  end

  def create
    @league = League.new(league_params)
    @league.players << Player.all
    @league.save
  end

  def update
  end

  def destroy

  end

  private

    def league_params
      params.require(:league).permit(:name, teams_attributes: [:name] )
    end

    def set_league
      @league = League.find(params[:id])
    end

end
