# PHASE 2
require "byebug"
def convert_to_int(str)
  # unless str.is_a?(Integer) 
      
  begin 
    Integer(str)
  rescue ArgumentError => e
    puts " not a valid number, please try again"
    return nil
  end
    
  
  
  
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
    
  begin
    if FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
    else
      raise StandardError
    end
  rescue StandardError => e
    # debugger
    if maybe_fruit == "coffee"
      puts "Pheh this is not fruit" 
      retry
    end
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    
    if yrs_known < 5 
      raise ArgumentError, "This friendship is too short, don't know you well enough"
    end 
    
    if name.length <= 0 || fav_pastime.length <= 0
      raise ArgumentError, "My real friends have names and pastimes"
    end 
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


