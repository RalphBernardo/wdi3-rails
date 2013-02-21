class OceansController < ApplicationController
  def index
    @oceans = Ocean.all
  end

  def new
  end

  def create
    Ocean.create(params[:oceans])
    redirect_to(oceans_path)
  end

  def show
    @ocean = Ocean.find(params[:id])
  end

  def destroy
    ocean = Ocean.find(params[:id])
    ocean.delete
    redirect_to(oceans_path)
  end

  def edit
    @ocean = Ocean.find(params[:id])
  end

  def update
    ocean = Ocean.find(params[:id])
    ocean.update_attributes(params[:ocean])
    redirect_to(oceans_path)
  end
end