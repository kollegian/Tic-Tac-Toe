class GameBoard
  attr_accessor :arr
  def initialize
    @arr=[]
      3.times do |row|
        @arr.push(Array.new(3, " - "))
      end
  end
  def print_game
    puts "- - - - - - -"
    @arr.each do |row|
    print "|"
    row.each do|cell|
      print "#{cell}|"
    end
      puts
      puts "- - - - - - -"
    end
  end
  def add_symbol(a,b, symbol)
    @arr[a][b]=" #{symbol} "
  end   
end

