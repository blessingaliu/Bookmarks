feature 'creating new bookmark' do
  scenario 'user can add bookmark to the list of bookmarks' do
    visit('/add_bookmark')
    fill_in('url', with: 'http://www.arsenal.com')
    fill_in('title', with: 'Arsenal')
    click_button('Submit')

    expect(page).to have_link('Arsenal', href: 'http://www.arsenal.com')
  end
end

