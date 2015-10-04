class GamesController < ApplicationController
  def index
    @games = Game.all.order("score DESC").limit(20)
  end

  def dashboard
  end

  def new
    @game = Game.new;
  end

  def new_first
    @game = Game.new;
  end

  def new_second
    @game = Game.new;
  end

  def new_third
    @game = Game.new;
  end

  def create
    @game = Game.create!(game_params)
    redirect_to games_path
  end

  private
    def game_params
      params.require(:game).permit(:name, :score, :game_type)
    end
end
