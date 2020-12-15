require 'pg'

class Bookmark
  def self.all
    if ENV['RACK_ENV'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end
    query = con.exec "SELECT * FROM bookmarks"
    query.map do |bookmark|
      bookmark["url"]
    end
  end
end
