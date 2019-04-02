require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    status 200
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end


  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
   erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    status 200
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 +' '+ @word2 +' '+ @word3 + ' '+ @word4 + ' '+ @word5 +'.'
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case params[:operation]
    when 'add'
    answer = @number1 + @number2
    "#{answer}"
    when 'subtract'
    answer = @number1 - @number2
    "#{answer}"
    when 'multiply'
    answer = @number1*@number2
    "#{answer}"
    when 'divide'
    answer = @number1/@number2
    "#{answer}"
    end
  end
end
