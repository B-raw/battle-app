

feature "Names form" do
  scenario "User can input their name" do
    visit '/'

    fill_in "player_one_name", :with => "Jennifer"
    fill_in "player_two_name", :with => "Michael"
    click_button "Submit names"

    expect(page).to have_text("Players created")
  end
end
