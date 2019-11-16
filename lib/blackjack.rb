require 'pry'

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
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  choice = get_user_input
  until choice == "h" || choice == "s"
    invalid_command
    prompt_user
    choice = get_user_input
  end
  if choice == "h"
    card_total += deal_card
  end
  card_total
end

def runner
  hand = 0
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end