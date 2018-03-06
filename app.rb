require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse!}"
  end
  
  get '/square/:number' do
    answer = params[:number].to_i * params[:number].to_i
    return answer.to_s
  end
  
  get '/say/:number/:phrase' do
    counter = params[:number]
    string = ''
    while counter > 0
    params[:number].each do |number|
      string = string + params[:phrase]
    end
    return string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ''
    
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    if operation == "*"
      answer = params[:number].to_i * params[:number].to_i
    elsif operation == "+"
      answer = params[:number].to_i + params[:number].to_i
    elsif operation == "-"
      answer = params[:number].to_i - params[:number].to_i
    else
      answer = params[:number].to_i / params[:number].to_i
    end
    return answer.to_s
  end
end