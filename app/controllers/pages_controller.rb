class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
  end

  def ownerdashboard
    @user = current_user
    @animals = Animal.where(user: @user)
    @owner_bookings = []
    bookings = Booking.all
    bookings.each do |booking|
      if @animals.include?(booking.animal)
        @owner_bookings << booking
      end
    end
  end
end
