class BitchBookEntriesController < ApplicationController
  before_action :set_bitch_book_entry, only: %i[show edit update approved destroy]

  def index
    @bitch_book_entries = BitchBookEntry.all
  end

  def show; end

  def new
    @bitch_book_entry = BitchBookEntry.new
    authorize @bitch_book_entry
  end

  def edit; end

  def create
    @bitch_book_entry = BitchBookEntry.new(bitch_book_entry_params)
    @bitch_book_entry.user = current_user
    if @bitch_book_entry.save!
      redirect_to bitch_book_entries_path
    else
      render :new
    end
  end

  def approved
    @bitch_book_entry.update(approved: true)
    redirect_to bitch_book_entries_path
  end

  def update
    @bitch_book_entry.update(bitch_book_entry_params)
    redirect_to bitch_book_entries_path
  end

  def destroy
    @bitch_book_entry.destroy
    redirect_to bitch_book_entries_path
  end

  private

  def set_bitch_book_entry
    @bitch_book_entry = BitchBookEntry.find(params[:id])
  end

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
