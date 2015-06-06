require "rails_helper"

RSpec.describe User, :type => :model do
  let!(:user) { User.create(name: "username") }

  describe "attributes" do
    it "must have a name" do
      user.name = nil
      expect(user).to_not be_valid
    end
  end
end
