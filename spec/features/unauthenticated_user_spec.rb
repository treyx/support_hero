require "rails_helper"

describe "the unauthenticated user", type: :feature do
  let!(:user) { User.create(name: "username") }
  let!(:shift) { Shift.create(date: Date.today, user_id: user.id) }

  scenario "can see today's schedule from the root" do
    visit root_path
    expect(page).to have_content("#{Date.today}")
    expect(page).to have_content("Today's Scheduled Support Hero:")
  end

  scenario "can see the name of the Hero who is scheduled today" do
    visit root_path
    expect(page).to have_content(user.name)
  end
end
