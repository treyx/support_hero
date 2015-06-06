require "rails_helper"

describe "the application", type: :feature do

  context "when logged out" do
    before(:each) { visit root_path }

    it "has a login button" do
      expect(page).to have_link("Log In")
    end
  end
end
