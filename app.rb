require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    backwards = params[:name].reverse
    "#{backwards}"
  end

  get '/square/:number' do
    squared = params[:number].to_i ** 2
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @word = params[:phrase]
    erb :say
    # params[:number].to_i.times do |num|
    #   "#{params[:phrase]}"
    # end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    a =  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    a
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @a = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @a = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @a = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @a = params[:number1].to_i / params[:number2].to_i
    end
    erb :operation
  end

end
