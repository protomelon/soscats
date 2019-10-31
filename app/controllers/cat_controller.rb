class CatController < ApplicationController
  def index
    @cats = Cat.all
    @total_cats = Cat.all.count
  end

  def show
    @cat = Cat.find(params[:id])
  end
end
