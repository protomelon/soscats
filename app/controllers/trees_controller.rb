# frozen_string_literal: true

class TreesController < ApplicationController
  def index
    @trees = Tree.all
    @total_tree = @trees.count
  end

  def show
    @tree = Tree.find(params[:id])
  end
end
