require_relative 'GameBoard'
require_relative 'Players'

class GUI
  attr_accessor :player1, :player2, :game
  def initialize
    @player1=Players.new
    @player2=Players.new
    @game=GameBoard.new   
  end
  def start
    puts "hello and welcome"
    puts "please choose your side"
    loop do 
      @player1.sign=gets.chomp
      if @player1.sign == "X" || @player1.sign=="O"
        break
      end
      puts "Please choose only X or O" 
    end
    choice=@player1.sign
    case choice
      when "X" then @player2.sign="O"
      when "O" then @player2.sign="X"
    end
  end

  def changed?(a,b)
    if @game.arr[a][b]!=" - "
        return true
    else 
        return false
    end
  end
    
  def game_on
    until is_over?
      puts "player 1: please choose x and y"
      x=gets.chomp.to_i
      y=gets.chomp.to_i
      puts @player1.sign
      @game.add_symbol(x, y, @player1.sign)
      @game.print_game  
        
      puts "player 2: please choose x and y"
      x=gets.chomp.to_i
      y=gets.chomp.to_i
      puts @player2.sign  
      @game.add_symbol(x, y, @player2.sign)
      @game.print_game
      end
    end
  
  def is_over?
    for i in 0..2
      if changed?(0,i)
        if @game.arr[0][i] == @game.arr[1][i] && @game.arr[0][i] == @game.arr[2][i]
          return true
        end
      end
      if changed?(i,0)
        if @game.arr[i][0] == @game.arr[i][1] && @game.arr[i][0] == @game.arr[i][2]
          return true
        end
      end
    end
    if changed?(0,0)
      if @game.arr[0][0] == @game.arr[1][1] && @game.arr[0][0] && @game.arr[2][2]
        return true
      end
    end
    if changed?(2,0)
      if @game.arr[2][0]== @game.arr[1][1] && @game.arr[2][0] && @game.arr[0][2]
        return true
      end
    end
   return false
   end
end