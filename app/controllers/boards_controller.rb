class BoardsController < ApplicationController
  def index
    @reveal = params[:reveal]
    @number = 5
  end

  def create
  end
end
