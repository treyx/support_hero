require "rails_helper"

context "authenticated host", type: :feature do
  before(:each) do
    @user = User.create(name: "user", password: "pw", role: 1)
    visit login_path
    fill_in "Name", with: @user.name
    fill_in "Password", with: @user.password
    click_button "Login!"
  end

  scenario "can see a link to update schedule" do
    expect(page).to have_link("Modify Schedule")
  end
end
