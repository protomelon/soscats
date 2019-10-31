class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
    @total_breeds = @breeds.count
  end

  def show
    @breed = Breed.find(params[:id])
    @cats = @breed.cats
    @total_cats = @cats.count
  end
end
