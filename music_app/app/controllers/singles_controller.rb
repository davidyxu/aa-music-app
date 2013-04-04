class SinglesController < ApplicationController
  def new
    @single = Single.new
  end
  def create
    @single = Single.create!(params[:single])
    redirect_to single_path(@single)
  end

  def index
    @singles = Single.all
  end

  def show
    @single = Single.includes(:recording).find(params[:id])
  end

  def edit
    @single = Single.find(params[:id])
  end

  def update
    @single = Single.find(params[:id])
    @single.update_attributes(params[:single])
    redirect_to single_path(@single)
  end

  def destroy
    @single = Single.find(params[:id])
    @single.destroy
    redirect_to singles_path
  end
end
