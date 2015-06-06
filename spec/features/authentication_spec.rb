require "rails_helper"

describe "the application", type: :feature do

  context "when logged out" do
    before(:each) { visit root_path }

    scenario "has a login button" do
      expect(page).to have_link("Log In")
    end

    scenario 'can visit a login page' do
      visit login_path
      expect(page).to have_field("name")
      expect(page).to have_field("password")
      expect(page).to have_button("Login!")
    end
  end
end
