# app/controllers/bitchbookentries_controller.rb

class BitchBookEntriesController < ApplicationController
  before_action :set_bitch_book_entry, only: %i[show edit update approved destroy]
  before_action :authorize_bitch_book_entry, only: %i[show edit update]

  # GET /bitch_book_entries or /bitch_book_entries.json
  def index
    @bitch_book_entries = policy_scope(BitchBookEntry)
  end

  # GET /bitch_book_entries/1 or /bitch_book_entries/1.json
  def show; end

  # GET /bitch_book_entries/new
  def new
    @bitch_book_entry = BitchBookEntry.new
    authorize @bitch_book_entry
  end

  # GET /bitch_book_entries/1/edit
  def edit; end

  # POST /bitch_book_entries or /bitch_book_entries.json
  def create
    @bitch_book_entry = BitchBookEntry.new(bitch_book_entry_params)
    authorize @bitch_book_entry
    @bitch_book_entry.user = current_user
    if @bitch_book_entry.save!
      redirect_to bitch_book_entries_path
    else
      render :new
    end
  end

  def approved
    authorize @bitch_book_entry
    @bitch_book_entry.update(approved: true)
    redirect_to bitch_book_entries_path
  end

  # PATCH/PUT /bitch_book_entries/1 or /bitch_book_entries/1.json
  def update
    @bitch_book_entry.update(bitch_book_entry_params)
    redirect_to bitch_book_entries_path
  end

  # DELETE /bitch_book_entries/1 or /bitch_book_entries/1.json
  def destroy
    authorize current_user, :allowed_destroy?
    @bitch_book_entry.destroy
    redirect_to bitch_book_entries_path
  end

  private

  def authorize_bitch_book_entry
    authorize @bitch_book_entry
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_bitch_book_entry
    @bitch_book_entry = BitchBookEntry.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bitch_book_entry_params
    params.require(:bitch_book_entry).permit(
      :topic,
      :title,
      :text,
      :rating,
      :user
    )
  end
end
