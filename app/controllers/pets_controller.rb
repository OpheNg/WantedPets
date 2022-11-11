class PetsController < ApplicationController
  def index
    @user = current_user
    @pets = Pet.all
    @markers = @pets.geocoded.map do |pet|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @user = current_user
    @pet = Pet.find(params[:id])
    @pets = Pet.all
  end

  def new
    @user = current_user
    @pet = Pet.new
  end

  def create
    @user = current_user
    @pet = Pet.new(pet_params)
    @pet.user_id = current_user.id
    redirect_to pets_path if @pet.save
  end

  def edit
    @user = current_user
    @pet = Pet.find(params[:id])
  end

  def update
    @user = current_user
    @pet = Pet.find(params[:id])

    if @pet.update(pet_params_update)
      redirect_to pet_path(@pet.id)
    else
      render :edit
    end
  end

  def destroy
    @user = current_user
    @pet = Pet.find(params[:id])
    redirect_to pets_path if @pet.destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name,:specie,:color,:breed,:age,:address,:email,:tel,:owner,:description,:user_id, :status)
  end

  def pet_params_update
    params.require(:pet).permit(:name,:specie,:color,:breed,:age,:address,:email,:tel,:owner,:description, :status)
  end
end
