def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  total = display_card_total(card_total)
  card_total

end

def hit?(number)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    new_card = deal_card
    number += new_card
    number
  elsif input == 's'
    number
  else
    invalid_command
    prompt_user
    end
  end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  first_cards = initial_round
  sum = hit?(first_cards)
  display_card_total(sum)
  until sum > 21 do
    hit?
    sum += hit?
  end
  end_game(sum)
end
