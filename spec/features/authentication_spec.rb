require "rails_helper"

describe "the application", type: :feature do

  context "when logged out" do
    before(:each) { visit root_path }

    scenario "has a login button" do
      expect(page).to have_link("Login")
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

  context "when logged in" do
    before(:each) do
      user = User.create(name: "user", password: "pw")
      visit login_path
      fill_in "Name", with: user.name
      fill_in "Password", with: user.password
      click_button "Login!"
    end

    scenario "has a logout link" do
      expect(page).to have_link("Logout")
    end

    scenario "can logout" do
      click_link_or_button("Logout")
      expect(page).to_not have_link("Logout")
    end
  end
end
