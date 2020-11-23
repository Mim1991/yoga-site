class YogaClassesController < ApplicationController
  def index
    @classes = YogaClass.all
  end

  def show
    @yogclass = YogaClass.find(params[:id])
    @booking = Booking.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
