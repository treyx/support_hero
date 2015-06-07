require "rails_helper"

RSpec.describe User, type: :model do
  let!(:user) { User.create(name: "username", password: "pw") }

  describe "attributes" do
    it "must have a name" do
      user.name = nil
      expect(user).to_not be_valid
    end
  end

  describe "relationships" do
    let!(:shift_1) { Shift.create(date: Date.today, user_id: user.id) }
    let!(:shift_2) { Shift.create(date: Date.tomorrow, user_id: user.id) }

    it "can have many shifts" do
      expect(user.shifts).to include(shift_1)
      expect(user.shifts).to include(shift_2)
      expect(user.shifts.count).to eq(2)
    end
  end
end
