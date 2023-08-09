class PerfumesController < ApplicationController
  def index
  end

  def new
    @perfume = Perfume.new
  end

  def create
    @perfume = Perfume.new(perfume_params)
    if @perfume.save
      redirect_to controller: :perfumes, action: :index
    else
      render :new
    end
  end

  private

  def perfume_params
    params.require(:perfume).permit(:perfumename, :brand, :type_id, :note, :memo, :image).merge(user_id: current_user.id)
  end
  
end
