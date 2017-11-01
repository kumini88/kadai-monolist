class UsersController < ApplicationController
  def show
    @user = User.find_by(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "ユーザを登録しました"
      redirect_to @user
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :new
    end
  end
  
  private
  
  def user_params
    params.re
end
