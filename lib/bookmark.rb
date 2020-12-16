require 'pg'

class Bookmark

  attr_reader :id, :url, :title

  def initalize(id:, url:, title:)
    @id = id
    @url = url
    @title = title
  end

  

  def self.all
    if ENV['RACK_ENV'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end
    query = con.exec "SELECT * FROM bookmarks"
    query.map do |row|
      Bookmark.new(id: row["id"], url: row["url"], title: row["title"])
    end

  end

  def self.add_bookmark(url, title)
    if ENV['RACK_ENV'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end
      con.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}')")
  end

end
