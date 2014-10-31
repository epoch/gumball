class UsersController < ApplicationController
  skip_before_action :authenticate, :only => [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end
end