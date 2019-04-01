require_relative 'config/environment'

class App < Sinatra::Base

get '/reversename/:name' do
  @reversed_name = params[:name].reverse
  "#{@reversed_name}"
end

get '/square/:number' do
  @squared_num = params[:number].to_i * params[:number].to_i
  "#{@squared_num}"
end


get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params[:word1].to_s + params[:word2].to_s + params[:word3].to_s + params[:word4].to_s + params[:word5].to_s
  " #{@words}"
end

get '/:operation/:number1/:number2' do
  @operation = params[:number1](+, -, *, /) params[:number2]
  "#{@operation}"
end




end
