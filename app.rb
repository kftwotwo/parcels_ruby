require('./lib/parcel')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/shipping') do
  erb(:result)
end
