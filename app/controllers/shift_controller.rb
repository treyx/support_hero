class ShiftController < ApplicationController
  def index
    @shifts = Shift.all
  end
end
