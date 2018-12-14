require 'sinatra'
require 'slim'

enable :sessions

before do
    if session[:history] == nil
        session[:history] = []
    end
end

get('/') do
    slim(:index)
end


post('/calculate') do
    num1 = params["operand1"].to_f
    num2 = params["operand2"].to_f
    operator = params["operator"]
    answer = 0

    if operator == "+"
        answer = num1 + num2 
    elsif 
        operator == "-"
        answer = num1 - num2 
    elsif 
        operator == "/"
        answer = num1 / num2 
    elsif 
        operator == "*"
        answer = num1 * num2 
    end
    session[:history] << "#{num1} #{operator} #{num2} = #{answer}"
    redirect('/')
end

post('/clear') do
    session[:history] = nil
    redirect('/')
end
