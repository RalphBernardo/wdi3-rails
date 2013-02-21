class UsersController < ApplicationController

  def index
    @users = @auth.is_admin ? User.all : []
  end

  def new
    @user = User.new
  end

  def create
    #raise params.inspect
    @user = User.new(params[:user]) #instance variable to save the fields' inputs
    #binding.pry
    if @user.save #boolean if user variable can be saved
      redirect_to(root_path)
    else
      render :new #find the view file and render it
    end
  end

  def edit
    @user = @auth
    render :new
  end

  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      redirect_to(root_path)
    else
      render :new
    end
  end

  def destroy
    if @auth.is_admin
      user = User.find(params[:id])
      user.delete
    end
    redirect_to(users_path)
  end

end















