require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @number_squared = @number *@number
    "#{@number_squared}"
  end

  get '/say/:number/:phrase' do

    @number = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase * @number}"
  end

  get '/say/:word1/word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    word_combination =@word1+" "+@word2+ " "+@word3+" "+@word4+" "+@word5+"."
    "#{word_combination}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number3 = params[:number2].to_i
    if @operation == "add"
      "#{}"
    elsif @operation == "subtract"
      "#{}"
    elsif @operation == "multiply"
      "#{}"
    elsif @operation == "divide"
      "#{}"
    else
      "#{}"
    end 
  end
end
