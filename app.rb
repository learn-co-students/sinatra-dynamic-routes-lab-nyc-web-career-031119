require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase] * @number

    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do

    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @op

    when "add"
      @results  = (@num1 + @num2).to_s
    when "subtract"
      @results =   (@num1 - @num2).to_s
    when "multiply"
      @results  =  (@num1 * @num2).to_s
    when "divide"
      @results =  (@num1/@num2).to_s
    end
   @results
  end

end
