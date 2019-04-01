require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    status 200
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:num' do
    status 200
    "#{params[:num].to_i * params[:num].to_i}"
  end

  get '/say/:number/:phrase' do
    status 200
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    str=""
    (@number).times {
      str += @phrase
    }
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    status 200
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + ' '+ @word2 + ' '+ @word3 + ' '+ @word4 + ' '+ @word5 +'.'
  end

  get '/:operation/:number1/:number2' do
    status 200
    @num1 =params[:number1].to_i
    @operation = params[:operation]
    @num2 = params[:number2].to_i

    case @operation
    when 'add'
      "#{@num1+@num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    else
      puts 'none'
  end
end
end
