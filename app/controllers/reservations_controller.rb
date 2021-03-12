class ReservationsController < ApplicationController
  def new
    @broom = Broom.find(params[:broom_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @broom = Broom.find(params[:broom_id])
    @reservation.broom = @broom
    @reservation.user = current_user
    if @reservation.save
      redirect_to broom_path(@broom), notice: "Your broom is flying home"
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to broom_path, notice: 'Reservation was successfully destroyed.'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
