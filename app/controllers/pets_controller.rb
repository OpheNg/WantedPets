class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    redirect_to pets_path if @pet.save
  end

  def update
    @pet = Pet.find(params[:id])

    if @pet.update(pet_params_update)
      redirect_to pet_path(@pet.id)
    else
      render :edit
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    redirect_to pets_path if @pet.destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name,:specie,:color,:breed,:age,:lost_address,:found_address,:email,:tel,:owner,:description)
  end

  def pet_params_update
    params.require(:pet).permit(:name,:specie,:color,:breed,:age,:lost_address,:found_address,:email,:tel,:owner,:description)
  end
end
