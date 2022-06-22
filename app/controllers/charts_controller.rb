class ChartsController < ApplicationController
  def index
    @entries = Entry.all
  end
end
