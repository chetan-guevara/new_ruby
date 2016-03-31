require("sinatra")
require("sinatra/reloader")
#also_reload("lib/**/*.rb")
require("./lib/hangman")

get("/") do
  @@hangman = Hangman.new()
  @num_failed_tries = ""
  @current_guess = ""
  erb(:index_hangman)
end

get('/guess') do
  #@@hangman.guess_letter(params.fetch('letter'))
  #@num_failed_tries = @@hangman.num_failed_tries
  #@current_guess = @@hangman.current_guess
  erb(:index_hangman)
end
