class GenresController < ApplicationController

  def index
    @genres = Genre.order(:name)
  end

  def new
    @genre = Genre.new
  end

  def edit
    #@user = User.find(params[:id])
    #@user = @auth
    @genre = Genre.find(params[:id])
    render :new
    #binding.pry
    #raise params.inspect
  end

  def create
    @genre = Genre.new(params[:genre])
    if @genre.save
      redirect_to(genres_path)
    else
      render :new
    end
  end

  def update
    #@user = User.find(params[:id])
    #@user = @auth
    @genre = Genre.find(params[:id])
    @genre.update_attributes(params[:genre])
    redirect_to(genres_path)
  end

end