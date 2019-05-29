class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(user_params)
    if @player.valid?
      @player.save
      redirect_to user_path(@player)
    else
      flash[:user_error] = @player.errors.full_messages
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end

end
