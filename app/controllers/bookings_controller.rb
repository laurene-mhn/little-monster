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
    @booking.user_id=current_user.id
    
    @end_date = params["booking"]["end_date(3i)"].to_i
    @start_date = params["booking"]["start_date(3i)"].to_i
    @total_price = (@end_date - @start_date) * @animal.price
    @booking.save
    redirect_to dashboard_path 
    # redirect to dashboard once created
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
