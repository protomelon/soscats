# frozen_string_literal: true

class BreedController < ApplicationController
  def index
    @breeds = Breed.all
    @total_breeds = @breeds.count
  end

  def show
    @breed = Breed.find(params[:id])
  end
end
