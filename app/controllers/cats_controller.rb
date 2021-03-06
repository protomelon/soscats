# frozen_string_literal: true

class CatsController < ApplicationController
  def index
    @cats = Cat.all
    @total_cats = @cats.count
  end

  def search_results
    @query = params[:query]
    @cats = Cat.where('name LIKE ?', "%#{@query}")
  end

  def show
    @cat = Cat.find(params[:id])
    @breed = Breed.find(@cat.breed.id)
    @tree = Tree.find(@cat.tree.id)
  end
end
