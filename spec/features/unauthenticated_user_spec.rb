require "rails_helper"

describe "the unauthenticated user", type: :feature do

  it "can see today's schedule from the root" do
    visit root_path
    expect(page).to have_content("#{Date.today.strftime("%m/%d/%Y")}")
    expect(page).to have_content("Today's Scheduled Support Hero:")
  end
end
