class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    #raise params.inspect
    artist = Artist.create(params[:artist])
    redirect_to(artist) #Don't need an instance variable because not rendering a page, the artist here refers to an object, not a path, Rails can create a path (url) from an object
  end

  def edit
    @artist = Artist.find(params[:id])
    render
  end

  def update
    artist = Artist.find(params[:id])
    artist.update_attributes(params[:artist])
    redirect_to(artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.delete
    redirect_to(artists_path)
  end

end
