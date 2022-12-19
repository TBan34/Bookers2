class UsersController < ApplicationController

  def index
    @users=User.all
    @book=Book.new
    @user=current_user
  end

  def show
    @user=User.find(params[:id])
    @book=Book.find(params[:id])
    @books=Book.all
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
