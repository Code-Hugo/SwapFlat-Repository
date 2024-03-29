class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      redirect_to properties_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :user_name)
  end
end
