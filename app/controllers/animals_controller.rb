class AnimalsController < ApplicationController
    before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animals = policy_scope(Animal)
    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url('icon.png')
      }
    end
  end

  def show
    @booking = Booking.new
    authorize @animal
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def create
    @animal = Animal.new(animal_params)
    authorize @animal
    @animal.user = current_user
    if @animal.save
      redirect_to animal_path(@animal), notice: "Animal was successfully created"
    else
      render :new
    end
  end

  def edit
    authorize @animal
  end

  def update
    authorize @animal
    @animal.update(animal_params)
    redirect_to animal_path(@animal), notice: "Animal was successfully updated"
  end

  def destroy
    authorize @animal
    @animal.destroy
    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :description, :category, :size, :power, :price, :address, :user_id, photos: [])
  end

  def set_animal
    @animal = Animal.find(params[:id])
  end
end
