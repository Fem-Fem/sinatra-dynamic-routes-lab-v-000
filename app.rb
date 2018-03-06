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
    string = ''
    params[:number].each do
      string = string + params[:phrase]
    end
    return string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ''
    
  end
  
  get '/:operation/:number1/:number2' do
    
  end
end