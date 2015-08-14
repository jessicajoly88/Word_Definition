require("sinatra")
require("sinatra/reloader")
require("./lib/word")
require("./lib/definition")
require('pry')
also_reload("lib/**/*.rb")

get('/') do
  @words = Word.all()
  erb(:index)
end


# post("/") do
#   word = Word.new({:word => params.fetch("word")})
#   word.save()
#   erb(:success)
# end
#
# get("/word/:id") do
#   @word = Word.find(params.fetch('id').to_i())
#   erb(:word)
# end
