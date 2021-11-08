require 'pg'

class Bookmark

  conn = PG.connect( dbname: 'bookmark_manager' )
  rs = conn.exec( "SELECT * FROM bookmarks" )
  rs.each do |row|
    puts "%s %s" % [ row['id'], row['url'] ]
  end

  def self.all
    ["https://www.google.co.uk", "https://www.bbc.co.uk", "https://www.facebook.co.uk"]
  end

end