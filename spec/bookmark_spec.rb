require './lib/bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark }

  it "returns a list of bookmarks" do
    expect(bookmark.all).to eq(["https://www.google.co.uk", "https://www.bbc.co.uk", "https://www.facebook.co.uk"])
  end

end