class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @perfumes = @user.perfumes
  end

  def edit
  end

  def new
    @user = User.new(user_params)

    respond_to do |format|
      if User.post_favorites_by(user_params)
        format.html { redirect_to }


  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :favorite1, {image: []})
  end
end
