require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared_num = @num * @num
    "#{@squared_num}"
  end

  get '/say/:number/:phrase' do
    @phrase_array = []
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times{|x| @phrase_array << @phrase}
    @phrase_array.join(" ")
    "#{@phrase_array}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    elsif @operation == "divide"
      "#{@num1 / @num2}"
    end
  end
end