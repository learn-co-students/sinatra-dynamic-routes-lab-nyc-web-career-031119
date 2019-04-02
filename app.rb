require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    list = []
    params[:number].to_i.times do
      list << params[:phrase]
    end

    list.inspect
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]].join(" ")+"."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      op = '+'
    when "subtract"
      op = '-'
    when "multiply"
      op = '*'
    when "divide"
      op = '/'
    end
    (params[:number1].to_i.send(op, params[:number2].to_i)).to_s
  end

end
