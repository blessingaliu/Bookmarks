require './lib/bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark }

  it "returns a list of bookmarks" do
    expect(bookmark.all).to eq(["http://www.makersacademy.com", "http://www.google.com/", "http://www.destroyallsoftware.com"])
  end

end