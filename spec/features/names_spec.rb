

feature "Names form" do
  scenario "User can input their name" do
    visit '/'

    fill_in "Player 1 name", :with => "Jennifer"
    fill_in "Player 2 name", :with => "Michael"
    click_button "Submit names"

    expect(page).to have_text("Players created")
  end
end
