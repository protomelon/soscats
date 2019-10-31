# frozen_string_literal: true

class CatsController < ApplicationController
  def index
    @cats = Cat.all
    @total_cats = @cats.count
  end

  def show
    @cat = Cat.find(params[:id])
  end
end
