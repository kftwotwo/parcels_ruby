require('./lib/parcel')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/shipping') do
  wieght = (params.fetch('wieght')).to_i
  @width = (params.fetch('width')).to_i
  @height = (params.fetch('height')).to_i
  @length = (params.fetch('length')).to_i
  @miles = (params.fetch('miles')).to_i
  @air = params.has_key?('air')
  @gift = params.has_key?('gift')
  # if @air == true
  #   @miles += 100
  # end
  #
  # if @gift == true
  #   @width & @length & @height += 10
  # end
  @parcel = Parcel.new(wieght, @width, @height, @length, @miles).total()
  erb(:result)
end
