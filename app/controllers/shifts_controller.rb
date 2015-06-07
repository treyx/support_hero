class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
  end

  def new
  end

  def create
  end
end
