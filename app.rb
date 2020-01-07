require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name'do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @total = @number * @number
    "#{@total}"
  end

  get '/say/:number/:phrase'do
    @number = params[:number].to_i
    @phrase = params[:phrase]
       "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'do
  @word1 = params[:word1] 
  @word2 = params[:word2] 
  @word3 = params[:word3] 
  @word4 = params[:word4] 
  @word5 = params[:word5]

  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    
    "#{mathOperation(@operation, @number1,@number2)}"
  end


end

def mathOperation(operation, num1,num2)

  case operation
    when "add"
      num1 + num2
    when "subtract"
      num1 - num2
    when "multiply"
      num1 * num2
    when "divide"
      num1 / num2
    end


end