require_relative 'board.rb'

class Piece 
  attr_reader :name
  
  def initialize(name)
    @name = name
    @pos 
    @color 
    @board 
  end 
  
end 

class NullPiece < Piece
  # def initialize(name)
  #   # @pos = nil
  # end 
  super
end 

class Rook < Piece
  
  
  
end 

class Queen < Piece 
  
end 

class Bishop < Piece 
  
end 

class Pawn < Piece 
  
end 

class Knight < Piece
  
end 

