class BoardsController < ApplicationController
  def index
    @answers = [["WoW", 47], ["CS", 29], ["DotA", 19], ["Krunker", 5], ["LoL", 1]]
  end

  def create
  end
end
