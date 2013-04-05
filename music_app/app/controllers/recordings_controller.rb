class RecordingsController < ApplicationController
  def index
    case params["query"]
    when "name"
      @recordings = Recording.order(:name)
    when "band_name"
      @recordings = Recording.includes(:band).order("bands.name")
    else
      @recordings = Recording.all
    end
  end
  def show
    @recording = Recording.includes(:band).find(params[:id])
  end
  def new
    @recording = Recording.new
    @recording.band_id = params[:band_id]
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
