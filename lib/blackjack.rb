require "pry"

def welcome
puts "Welcome to the Blackjack Table"

end

def deal_card
rand(10) + 1 a
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp 
end

def end_game(num)
puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  round = deal_card + deal_card
  display_card_total(round)
  round
end

def invalid_command
puts 'Please enter a valid command'
end

def hit?(current) 
  prompt_user
  input = get_user_input
  if input == "s"
    current
  elsif input == "h"
    current += deal_card 
  else
    invalid_command
    hit?(current)
  end 
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
num = initial_round
num2 = hit?(num)
display_card_total(num2)
if num2 < 21
  hit?
else 
  end_game(num2)
end 

end
    
