class BitchBookEntriesController < ApplicationController
  before_action :set_bitch_book_entry, only: %i[show edit update destroy]

  # GET /bitch_book_entries or /bitch_book_entries.json
  def index
    @bitch_book_entries = BitchBookEntry.all
  end

  # GET /bitch_book_entries/1 or /bitch_book_entries/1.json
  def show
  end

  # GET /bitch_book_entries/new
  def new
    @bitch_book_entry = BitchBookEntry.new
  end

  # GET /bitch_book_entries/1/edit
  def edit
  end

  # POST /bitch_book_entries or /bitch_book_entries.json
  def create
    @bitch_book_entry = BitchBookEntry.new(bitch_book_entry_params)

    respond_to do |format|
      if @bitch_book_entry.save
        format.html do
          redirect_to bitch_book_entry_url(@bitch_book_entry), notice: "Bitch book entry was successfully created."
        end
        format.json { render :show, status: :created, location: @bitch_book_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bitch_book_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bitch_book_entries/1 or /bitch_book_entries/1.json
  def update
    respond_to do |format|
      if @bitch_book_entry.update(bitch_book_entry_params)
        format.html do
          redirect_to bitch_book_entry_url(@bitch_book_entry), notice: "Bitch book entry was successfully updated."
        end
        format.json { render :show, status: :ok, location: @bitch_book_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bitch_book_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bitch_book_entries/1 or /bitch_book_entries/1.json
  def destroy
    @bitch_book_entry.destroy

    respond_to do |format|
      format.html { redirect_to bitch_book_entries_url, notice: "Bitch book entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bitch_book_entry
    @bitch_book_entry = BitchBookEntry.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bitch_book_entry_params
    params.require(:bitch_book_entry).permit(:topic, :title, :text, :rating, :user)
  end
end
