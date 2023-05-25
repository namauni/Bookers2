class UsersController < ApplicationController

  def index
    @user = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @book = @user.books  
  end

  def edit
     @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to edit_user_path(@user)
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end