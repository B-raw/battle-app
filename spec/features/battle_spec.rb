require 'spec_helper'

feature "Names form" do
  scenario "User can input their name" do
    sign_in_and_play

    expect(page).to have_text("Jennifer Vs. Michael")
  end
end

feature "Viewing hit points" do
  scenario "Player 1 can see player 2's hit points" do
    sign_in_and_play

    expect(page).to have_text("Michael HP: ")


  end
end
