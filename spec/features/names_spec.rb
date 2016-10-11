require 'spec_helper'

feature "Names form" do
  scenario "User can input their name" do
    visit '/'

    fill_in "player_1_name", :with => "Jennifer"
    fill_in "player_2_name", :with => "Michael"
    click_button "Submit names"

    expect(page).to have_text("Jennifer Vs. Michael")
  end
end
