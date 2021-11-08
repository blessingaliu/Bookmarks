require 'spec_helper'

feature "Bookmark page" do
  scenario "User vistis page and sees a list of bookmarks" do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('https://www.google.co.uk')
    expect(page).to have_content('https://www.bbc.co.uk')
    expect(page).to have_content('https://www.facebook.co.uk')
  end
end