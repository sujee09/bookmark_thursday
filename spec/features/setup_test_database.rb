require 'pg'

def clear_database
    con = PG.connect(dbname: 'bookmark_manager_test')
    query = con.exec "TRUNCATE bookmarks;"
end

