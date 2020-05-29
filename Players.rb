class Players
  attr_accessor :sign
  def initialize
    @sign=" "
  end
  def play
    loop do
      puts "Please enter x: "
      x=gets.chomp.to_i
      puts "Please enter y: "
      y=gets.chomp.to_i
      if (x<3 && x>=0) && (y<3 && y>=0)
        return res=[x,y]
        
      end
      puts"Please enter a valid number"
    end
   
  end  
end