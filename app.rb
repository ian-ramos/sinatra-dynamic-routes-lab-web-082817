require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    @number_squared = @number.to_i ** 2
    "#{@number_squared.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase * @number.to_i  # can't do times loop?
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1]
    @num2 = params[:number2]
    @operation = params[:operation]

    if @operation == "add"
      @answer = @num1.to_i + @num2.to_i
      "#{@answer}"
    elsif @operation == "subtract"
      @answer = @num1.to_i - @num2.to_i
      "#{@answer}"
    elsif @operation == "multiply"
      @answer = @num1.to_i * @num2.to_i
      "#{@answer}"
    else
      @answer = @num1.to_i / @num2.to_i
      "#{@answer}"
    end
  end

end
