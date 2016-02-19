def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
     card= rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  info=String(gets.chomp)
  return info
end

def end_game(hit)
  puts "Sorry, you hit #{hit}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  total = first + second
  display_card_total(total)
  return total
end
  
def hit?(total)
  prompt_user
  decide = get_user_input
  if decide == "s"
    return total
  elsif decide == "h"
    new_ = deal_card
    old = total
    card_total = new_+ old
    return card_total
  end
end
  
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  num=0
  welcome
  round=initial_round 
  until num > 21 do 
     a = hit?(round)
     display_card_total(a)
     num= num + a
  end
  answe= num
  end_game(answe)
end
    
