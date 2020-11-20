class BookingsController < ApplicationController

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
    # authorize @animal
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    # authorize @animal
    @booking.animal = @animal
    @booking.user_id = current_user.id
    @total_price = (@booking.end_date - @booking.start_date).to_i * @animal.price
    @booking.total_price = @total_price
    if @booking.save
      redirect_to dashboard_path
    else
      render "animals/show"
    end
    # redirect to dashboard once created
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
