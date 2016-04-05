#Works with the Uplift app

class Entry

  attr_reader(:text, :user_id)

  define_method(:initialize) do |attributes|
    @text = attributes.fetch(:text)
    @user_id = attributes.fetch(:user_id)

    #figure out if this is a web link. If so, assign type here 
    #@type = 
    #@hash = unique hashid 
  end

  define_method(:save) do
    DB.exec("INSERT INTO entries (text, user_id) VALUES ('#{@text}', #{@user_id});")
  end

  define_singleton_method(:sample) do 
    #get the size of the DB
    #pick a random number from the size of the DB
    #get the entry with that id number 
    num_rows = DB.exec("SELECT COUNT(*) FROM entries").first().fetch("count")
    target_id = rand(1..num_rows.to_i())
    db_entry = DB.exec("SELECT * FROM entries WHERE id=#{target_id};")
    target_text = db_entry.first().fetch("text")
    
    return target_text
  end


  define_method(:==) do |another_entry| 
    self.hash().==(another_entry.hash())
  end

end