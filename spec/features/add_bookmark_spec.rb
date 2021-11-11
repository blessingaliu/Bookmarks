feature 'creating new bookmark' do
  scenario 'user can add bookmark to the list of bookmarks' do
    visit('/add_bookmark')
    fill_in('url', with: 'www.arsenal.com')
    click_button('Submit')

    expect(page).to have_content 'www.arsenal.com'
  end
end

