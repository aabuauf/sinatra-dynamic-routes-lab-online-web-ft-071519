require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end
  
  get "/say/:number/:phrase" do
    i = 0
    array = []
    while i< params[:number].to_i do
     array << "#{params[:phrase]}"
     i+=1
    end
    "#{array}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
  end
end