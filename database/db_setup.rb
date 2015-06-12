DATABASE = SQLite3::Database.new("database/apts.db")

DATABASE.execute("CREATE TABLE IF NOT EXISTS slides 
                (id INTEGER PRIMARY KEY, 
                title TEXT NOT NULL,
                body TEXT)")

if DATABASE.execute("SELECT * FROM slides") == []
    DATABASE.execute("INSERT INTO slides (title, body)
    VALUES 
    ('Page One', 'this is something really cool'),
    ('Page Two', 'and this is cool too'),
    ('Page Three', 'and last but not least')")  
  end