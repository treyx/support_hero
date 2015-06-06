require "rails_helper"

RSpec.describe Shift, :type => :model do
  let!(:user) { User.create(name: "username") }
  let!(:shift) { Shift.create(date: Date.today, user_id: user.id) }

  describe "attributes" do
    it "must have a date" do
      shift.date = nil
      expect(shift).to_not be_valid
    end

    it "must have a date in the future" do
      shift.date = Date.yesterday
      expect(shift).to_not be_valid
    end
  end

  describe "relationships" do
    it "can belong to a user" do
      expect(shift.user).to be_present
      expect(shift.user.name).to eq(user.name)
    end

    it "must belong to a user" do
      shift.user = nil
      expect(shift).to_not be_valid
    end
  end
end
