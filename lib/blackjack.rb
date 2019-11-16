def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(10) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you ended with #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card + deal_card)
end

def hit?
  hand = 11
  choice = ""
  prompt_user
  until choice != "h" || choice !="s"
    choice = get_user_input 
    if choice != "h" || "s"
      invalid_command
    end
  end
  if choice = "h"
    deal_card
    display_card_total(hand)
  else
    end_game
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
