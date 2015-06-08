require "rails_helper"

context "authenticated admin", type: :feature do
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

  scenario "can add a shift to the schedule" do
    user = User.create(name: "Tom", password: "pw", role: 0)
    click_link_or_button("Modify Schedule")
    expect(page).to have_content("Add Shifts")
    fill_in "heroes", with: user.name
    click_button "Schedule!"
    visit root_path
    expect(page).to have_content("Tom")
  end
end
