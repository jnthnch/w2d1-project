require_relative 'piece.rb'

class Board 
  attr_reader :board
  
  def initialize
    @board = Array.new(8) { Array.new {[]} }
    self.populate
    # [
    #   [Rook.new, , piece], 
    #   [piece, piece], 
    #   [nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece],
    #   [nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece], 
    #   [nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece],
    #   [nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece, nullpiece], 
    #   [piece, piece, piece, piece], 
    #   [piece, piece]
    # ]
  end
  
  def populate
    @board[2..5].each do |row|
      8.times do 
       row << NullPiece.new("notbob")
      end 
    end 
    
    @board[0..1].each do |row|
      8.times do 
        row << Piece.new("bob")
      end 
    end 
    
    @board[6..7].each do |row|
      8.times do
        row << Piece.new("bob")
      end
    end 
    
    p @board 
  end 
  
  def move_piece(start_pos, end_pos)
    begin  
      if start_pos == NullPiece
        "no piece at this position"
        raise StandardError
      end 
    rescue StandardError => e
        retry
    end 
      
    begin 
      if end_pos.nil? #if player.color == piece.color 
        raise StandardError, "invalid move"
      end
    rescue StandardError => e
      retry
    end 

  end 
  
  def display_board
    p @board
  end 
  

end  