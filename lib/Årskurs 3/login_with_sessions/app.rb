require 'sinatra'
require 'slim'

enable :sessions

get('/') do
    slim(:index)
end

get('/welcome') do
    slim(:welcome)
end

post('/test') do
    session[:username] = params["username"]
    session[:password] = params["password"]

    if (session[:username] == "Moga") && (session[:password] == "hej")
        
        redirect('/welcome')
    else
        session[:username] = nil
        redirect('/')      
    end
end

post('/logout') do
    session.destroy
    redirect('/')
end