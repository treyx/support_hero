require "rails_helper"

describe "the application", type: :feature do

  context "when logged out" do
    before(:each) { visit root_path }

    scenario "has a login button" do
      expect(page).to have_link("Log In")
    end

    scenario "can visit a login page" do
      visit login_path
      expect(page).to have_content("Sign In")
      expect(page).to have_field("Name")
      expect(page).to have_field("Password")
      expect(page).to have_button("Login!")
    end

    scenario "does not have a logout link" do
      expect(page).not_to have_link("Logout")
    end

    scenario "does not have a link to view the user specific shifts" do
      expect(page).not_to have_link("View My Shifts")
    end
  end
end
