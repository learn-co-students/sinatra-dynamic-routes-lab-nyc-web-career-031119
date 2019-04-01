require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  get '/square/:number' do
    @num = params[:number]
    (@num.to_i ** 2).to_s
  end
  get '/say/:number/:phrase' do
    num = params[:number]
    phrase = params[:phrase]
    # binding.pry
    string = ''
    num.to_i.times do
       string << phrase
    end
    string
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + ' ' + params[:word2] +  ' ' +  params[:word3] +  ' ' +  params[:word4] +  ' ' +  params[:word5] + '.'
  end
  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    # binding.pry
    case operator
    when "add"
      num1 + num2
    when "subtract"
      num1 - num2
    when "multiply"
      num1 * num2
    when "divide"
      num1/num2
    end.to_s
  end
end
