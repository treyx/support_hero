require "rails_helper"

context "authenticated hero", type: :feature do
  before(:each) do
    user = User.create(name: "hero-name", password: "pw", role: 0)
    User.create(name: "hero-2", password: "pw", role: 0)
    @shift = Shift.create(date: (Date.today + 1), user_id: user.id)
    visit login_path
    fill_in "Name", with: user.name
    fill_in "Password", with: user.password
    click_button "Login!"
  end

  scenario "it can view its shifts" do
    expect(page).to have_link("View My Shifts")
    click_link_or_button("View My Shifts")
    expect(page).to have_content("Your Upcoming Shifts")
  end

  scenario "it can remove a shift from its schedule" do
    click_link("View My Shifts")
    expect(page).to have_content("#{@shift.date}")
    click_link_or_button("Mark Unavailable")
    expect(page).to_not have_content("#{@shift.date}")
  end

  scenario "it can remove a shift from its schedule" do
    click_link_or_button("View My Shifts")
    expect(page).to have_content("#{@shift.date}")
    click_link_or_button("Swap!")
    expect(page).to_not have_content("#{@shift.date}")
  end
end
