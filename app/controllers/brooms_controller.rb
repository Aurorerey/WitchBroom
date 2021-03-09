class BroomsController < ApplicationController
  def index
    @brooms = Broom.all
  end

  def new
    @broom = Broom.new
  end

  def show
    @broom = Broom.find(params[:id])
  end

  def create
    @broom = Broom.new(broom_params)
    if @broom.save
      redirect_to @broom, notice: 'Broom was successfully created.'
    else
      render :new
    end
  end

    private

  def broom_params
    params.require(:broom).permit(:name, :description, :price, :twigs, :power, :age, :user_id)
  end
end
