require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/result') do
  @result = params.fetch('score').to_i.allergies() # points to name of the input
  erb(:index)
end
