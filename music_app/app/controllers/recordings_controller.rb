class RecordingsController < ApplicationController
  def index
    @recordings = Recording.all
  end
  def show
    @recording = Recording.includes(:band).find(params[:id])
  end
  def new
    @recording = Recording.new
  end
  def create
    @recording = Recording.create!(params[:recording])
    redirect_to recording_path(@recording)
  end
  def edit
    @recording = Recording.find(params[:id])
  end
  def update
    @recording = Recording.find(params[:id])
    @recording.update_attributes(params[:recording])
    redirect_to recording_path(@recording)
  end
  def destroy
    @recording = Recording.find(params[:id])
    @recording.destroy
    redirect_to recordings_path
  end
end
