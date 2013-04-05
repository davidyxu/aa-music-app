class BandsController < ApplicationController
  def new
    @band = Band.new
  end
  def show
    @band = Band.find(params[:id])
  end
  def index
    @bands = Band.all
  end
  def create
    @band = Band.create!(params[:band])
    redirect_to band_path(@band)
  end
  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_path
  end
  def edit
    @band = Band.find(params[:id])
  end
  def update
    @band = Band.find(params[:id])
    @band.update_attributes(params[:band])
    redirect_to band_path(@band)
  end

  def search
    @bands = Band.where("name LIKE ?", "%#{params[:query]}%")
  end
end
