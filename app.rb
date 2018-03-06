require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse!}"
  end
  
  get '/square/:number' do
    return "#{params[:number]}.to_i * #{params[:number].to_i}"
  end
  
  get '/say/:number/:phrase' do
    string = ''
    params[:number].each do
      string = string + params[:phrase]
    end
    string
  end
  
  
end