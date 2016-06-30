require 'sinatra'
require 'sinatra/reloader'

number = rand(101)
message = ""
winner_message = ""

def check_guess(guess)
	
end

get '/' do
	guess = params['guess'].to_i
	if guess > number
		if guess > number + 5
			message = "Way too high!" 
		else
			message = "Too high!"
		end
	elsif guess < number
		if guess < number - 5
			message = "Way too low!"
		else
			message = "Too low!"
		end
	else
		message = "You got it right!"
		winner_message = "The secret number is #{number}!"
	end
	
	erb :index, :locals => {:number => number, :message => message, :winner_message => winner_message}
end
