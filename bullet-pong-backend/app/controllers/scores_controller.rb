class ScoresController < ApplicationController


  def index
    @scores = Score.all
    render json: @scores

  end

  def new
    @score = Score.new
    render json: @score
  end

  def show
    @score = Score.find(params[:id])
    render json: @score
  end

  def create
    @score = Score.new(score_params)
    if @score.valid?
      @score.save
       render json: @score, status: created, location: @score
    else
      render json: @score.errors.full_messages
    end
  end

  private

  def score_params
    params.require(:score).permit(:number)
  end


end
