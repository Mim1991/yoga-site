class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    redirect_to root_path
  end

end
