class AnimalsController < ApplicationController
    before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show
    # @booking = Booking.new
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal), notice: "Animal was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @animal.update(animal_params)
    redirect_to animal_path(@animal), notice: "Animal was successfully updated"
  end

  def destroy
    @animal.destroy
    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :description, :category, :size, :power, :price, :location, :user_id)
  end

  def set_animal
    @animal = Animal.find(params[:id])
  end
end
