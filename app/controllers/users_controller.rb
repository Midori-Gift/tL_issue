class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_post = @user.posts.page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'ユーザー情報を更新しました！'
      redirect_to user_path(@user)
    else 
      flash.now[:alert] = '変更が保存できませんでした。'
      render :'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
