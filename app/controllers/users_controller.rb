class UsersController < ApplicationController
  before_action :set_user, only: %i[show]
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username,:password, :image, :bio, :account )
  end

  def set_user
    @user = User.find(params[:id])
  end
end


