require 'colorize'
require 'board.rb'
require 'cursor.rb'

class Display
  def initialize
    @cursor = Cursow.new[0, 0]
  end 
  
end 