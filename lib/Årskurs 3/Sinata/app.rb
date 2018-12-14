require 'sinatra'

get('/') do
    "Hej alla barn"
end

get('/search') do
    "Men sök på något dååå"
end

get('/search/:searchword') do
    searched = params[:searchword]
    "Du sökte på #{searched}"
end