class BreedsController < ApplicationController
  def index
    @breeds = Tree.all
    @total_breeds = @breeds.count
  end

  def show
    @breed = Breed.find(params[:id])
  end
end
