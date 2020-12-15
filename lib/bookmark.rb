require 'pg'

class Bookmark
  def self.all
    con = PG.connect(dbname: 'bookmark_manager')
    query = con.exec "SELECT * FROM bookmarks"
    query.map do |bookmark|
      bookmark["url"]
    end
  end
end
