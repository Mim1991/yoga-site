class BookingsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @yogclass = YogaClass.find(params[:yoga_class_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.yoga_class = @yogclass
    if @booking.save
      redirect_to confirmation_booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  def confirmation
    @booking = Booking.find(params[:id])
    # @yogclass = YogaClass.find(params[:yoga_class_id])
  end

end
