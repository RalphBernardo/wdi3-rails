class AlbumsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edt, :update]

  def index
    @genres = Album.order(:name)
  end

  def new
    @genre = Album.new
  end

  def edit
    @genre = Album.find(params[:id])
    render :new
  end

  def create
    @genre = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    redirect_to(albums_path)
  end

  private
  def check_if_admin
    redirect_to(root_path) if @auth.nil? || @auth.is_admin?
  end

end