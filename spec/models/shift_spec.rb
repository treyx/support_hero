require "rails_helper"

RSpec.describe Shift, :type => :model do
  describe "shift attributes" do
    it "must have a date" do
      shift = Shift.create(date: nil)
      expect(shift).to_not be_valid
    end

    it "must have a date in the future" do
      shift = Shift.create(date: Date.yesterday)
      expect(shift).to_not be_valid
    end
  end
end
