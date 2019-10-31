# frozen_string_literal: true

class TreesController < ApplicationController
  def index
    @trees = Tree.all
    @total_trees = @trees.count
  end

  def show
    @tree = Tree.find(params[:id])
    @cats = @tree.cats
  end
end
