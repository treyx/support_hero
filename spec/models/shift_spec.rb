require "rails_helper"

RSpec.describe Shift, :type => :model do
  let!(:user) { User.create(name: "username") }
  let!(:shift) { Shift.create(date: Date.today, user_id: user.id) }
  describe "attributes" do
    it "must have a date" do
      shift = Shift.create(date: nil)
      expect(shift).to_not be_valid
    end

    it "must have a date in the future" do
      shift = Shift.create(date: Date.yesterday)
      expect(shift).to_not be_valid
    end
  end

  describe "relationships" do
    it "belongs to a user" do
      expect(shift.user).to be_present
      expect(shift.user.name).to eq(user.name)
    end
  end
end
