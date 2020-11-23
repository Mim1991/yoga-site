class YogaClassesController < ApplicationController
  def index
    @classes = YogaClass.all
  end

  def show
    @yogclass = YogaClass.find(params[:id])
    @booking = Booking.new
  end

  def new
    @yogclass = YogaClass.new
  end

  def create
    @yogclass = YogaClass.new(yoga_class_params)
    if @yogclass.save
      redirect_to yoga_classes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def yoga_class_params
    params.require(:yoga_class).permit(:name, :description, :price, :address, :capacity,
      :date, :time, :length)
  end

end
