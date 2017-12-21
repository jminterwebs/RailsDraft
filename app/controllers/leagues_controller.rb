class LeaguesController < ApplicationController
  before_action :set_league, only: :show

  def index
    render json: League.all, each_serializer: LeaguesAllSerializer
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
    @league = League.find(params[:id])
    @player = Player.find(params[:player])

    @league.teams[params[:drafting_team]].players << @player

    next_spot = @league.draft_spot + 1
    @league.update(draft_spot: next_spot )

    if @league.draft_spot % 10 == 0
      next_round = @league.draft_round + 1
      @league.update(draft_round: next_round )
    end


  end

  def destroy

  end

  private

    def league_params
      params.require(:league).permit(:name, teams_attributes: [:name] )
    end

    def drafting_params
      params.require(:leauge).permit(:id, :draft_spot, player_attributes: [:id] )
    end

    def set_league
      @league = League.find(params[:id])
    end

end
