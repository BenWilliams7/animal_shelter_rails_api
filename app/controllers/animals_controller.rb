class AnimalsController < ApplicationController

  def index
    @animals = Animal.page(params[:page]).per(100)
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "Your animal has been updated successfully."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "Your animal has been deleted successfully."
      }
    end
  end

  def random
    @animal = Animal.all.sample
    json_response(@animal)
  end

  def search
    searched = params[:name]
    @animals = Animal.all.where({name: searched})
    json_response(@animal)

  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def animal_params
    params.permit(:name, :breed)
  end
end
