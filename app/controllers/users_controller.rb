class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def edit
    @user = User.getUserDetail(params[:id])
  end

  def update
    User.updateUserInfo(params[:id],params[:name],params[:age],params[:profile])
  end
end
