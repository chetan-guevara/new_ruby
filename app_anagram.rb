require('sinatra')
require('sinatra/reloader')
require('./lib/anagram.rb')
#also_reload('lib/**/*.rb')

get('/') do
  erb(:index_anagram)
end

get('/answer') do
  word1 = params.fetch('word1')
  word2 = params.fetch('word2')
  @anagram_answer = word1.anagram?(word2)
  erb(:anagram_result)
end