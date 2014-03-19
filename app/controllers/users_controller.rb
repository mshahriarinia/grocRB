class UsersController < ApplicationController

  def show
    id = params[:id]
    @user = User.find(id)
  end

  def index
    @users = User.all
  end

  def new
    @user ||= User.new
  end

  def create
    @user = User.new(user_params)
    if(@user.save)
      flash[:notice] = "#{@user.name} was successfully created."
      redirect_to users_path
    else
      render "new"
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if(@user.update_attributes(user_params))
      flash[:notice] = "#{@user.name} was successfully updated."
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.name}' deleted."
    redirect_to users_path
  end

  private 
  def user_params
    params.required(:user).permit(:name, :password, :email, :description )
  end

end
