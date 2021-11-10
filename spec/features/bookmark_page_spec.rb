require 'spec_helper'

feature "Bookmark page" do
  scenario "User visits page and sees a list of bookmarks" do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.destroyallsoftware.com')
    expect(page).to have_content('http://www.google.com')
  end
end