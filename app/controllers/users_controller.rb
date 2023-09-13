class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @perfumes = @user.perfumes
  end

  def edit
  end



  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :favorite1, :image)
  end
end
