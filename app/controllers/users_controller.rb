class UsersController < ApplicationController

  def index
    @users = MstUser.all
  end

  def create
    @user = MstUser.new(
      name: params[:createUserName], 
      email: params[:createUserEmail], 
      password: params[:createUserPassword], 
      password_confirmation: params[:createUserPassword], 
      is_superuser: "false")
    if @user.save
      flash[:success] = '新しいユーザーを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザーの登録に失敗しました。'
      render :index
    end
  end
end
