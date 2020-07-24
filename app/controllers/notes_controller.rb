class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy]

  def index
    @notes = current_user.notes
  end

  def show
    @note = Note.includes(:hyper_links).where(id: params[:id]).first
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @note, only: [:title, :body]}
    end
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @note.save
        format.html { redirect_to user_note_url(current_user, @note), notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to user_note_path(current_user, @note), notice: 'Note was successfully updated.' }
        format.json { render json: @note, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to user_notes_url(current_user), notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @notes = current_user.notes.where("title LIKE ?", "%#{params[:term]}%")
    respond_to do |format|
      format.js
    end
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :body)
    end
end
