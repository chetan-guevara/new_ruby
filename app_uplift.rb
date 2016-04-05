require("sinatra")
require("sinatra/reloader")
#also_reload("lib/**/*.rb")
require('pg')
require("./lib/entry")

DB = PG.connect({:dbname => 'uplift'})

get("/submit") do
	erb(:index_uplift)
end

get("/get_uplifted") do
	erb(:get_uplifted) 
end

get("/show_message") do
	#get random entry from DB 
	#Set variable to the content of the entry
	@message = Entry.sample()
	erb(:show_message)
end

post("/entry_upload") do
	text = params.fetch("submission")
	user_id = params.fetch("user_id")
	entry = Entry.new({:text => text, :user_id => user_id})
	entry.save()
	erb(:success_uplift)
end


