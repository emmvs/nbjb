# app/controllers/games_controller.rb

class GamesController < ApplicationController
  before_action :find_game, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @games = Game.search_by_city(params[:query])
    else
      @games = Game.all
    end
  end

  def show; end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save!
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to @game, notice: "Your amazing game is edited"
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path, notice: "Oh no! Bye bye to the amazing game 👋"
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:language, :title, :description, :video, :category_id)
  end
end
