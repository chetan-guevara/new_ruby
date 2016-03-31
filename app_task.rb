require("sinatra")
require("sinatra/reloader")
#also_reload("lib/**/*.rb")
require('pg')
require("./lib/task")

DB = PG.connect({:dbname => 'to_do'})

get("/") do
  @tasks = Task.all()
  erb(:index_post)
end

post("/tasks") do
  description = params.fetch("description")
  task = Task.new({:description => description, :list_id => 1})
  task.save()
  erb(:success)
end