class PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players

  end

  def new
    @player = Player.new
    render json: @player
  end

  def show
    @player = Player.find(params[:id])
    render json: @player
  end

  def create
    @player = Player.find_or_create_by(player_params)
    # Score.create(number: params['number'], user_id: @user.id])
    render json: @player
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end

end
