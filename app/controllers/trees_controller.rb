# frozen_string_literal: true

class TreesController < ApplicationController
  def index
    # @trees = Tree.all
    @trees = Tree.page(params[:page])
  end

  def show
    @tree = Tree.find(params[:id])
    @cats = @tree.cats
  end
end
