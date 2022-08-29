# app/controllers/games_controller.rb

class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :policy_scope_games, only: %i[index show new edit update destroy]
  before_action :find_game, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @games = Game.search_by_city(params[:query])
    else
      @games = Game.all
    end
  end

  def show
    authorize @game
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    authorize @game
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
    authorize @game
    @game.destroy
    redirect_to games_path, notice: "Oh no! Bye bye to the amazing game 👋"
  end

  private

  def find_game
    @game = Game.find(params[:id])
    authorize @game
  end

  def game_params
    params.require(:game).permit(:language, :title, :description, :video, :category_id)
  end

  def policy_scope_games
    @games = policy_scope(game)
  end
end
