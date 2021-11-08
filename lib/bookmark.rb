class Bookmark

  def self.all
    ["https://www.google.co.uk", "https://www.bbc.co.uk", "https://www.facebook.co.uk"]
  end

  def add_bookmark(website)
    @list << website
  end

end