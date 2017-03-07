class Rover
  def initialize(xcor, ycor, direction)
    @xcor = xcor
    @ycor = ycor
    @direction = direction
  end

  def location
    puts "rover is located at x: #{@xcor}, y: #{@ycor}, dir:#{@direction}"
  end

  def move
    if @direction == "N"
      @ycor += 1
    elsif @direction == "E"
      @xcor += 1
    elsif @direction == "S"
      @ycor -= 1
    else @direction == "W"
      @xcor -= 1
    end
  end

  def read_instruction
    puts "would you like to move or turn?"
    answer = gets.chomp
    if answer == "turn"
      turn
    elsif answer == "move"
      move
    else
      puts "no commands were understood"
    end
  end

  def turn
    puts "current direction is #{@direction} use L or R to rotate the rover 90 degress Left or Right."
    puts "please enter a direction"
    rotate = gets.chomp

      if rotate == "L" && @direction == "N"
        @direction = "W"
        puts "direction is now #{@direction}"
      elsif rotate == "L" && @direction == "W"
        @direction = "S"
        puts "direction is now #{@direction}"
      elsif rotate == "L" && @direction == "S"
        @direction = "E"
        puts "direction is now #{@direction}"
      elsif rotate == "L" && @direction == "E"
        @direction = "N"
        puts "direction is now #{@direction}"

      elsif rotate == "R" && @direction == "N"
        @direction = "E"
        puts "direction is now #{@direction}"
      elsif rotate == "R" && @direction == "E"
        @direction = "S"
        puts "direction is now #{@direction}"
      elsif rotate == "R" && @direction == "S"
        @direction = "W"
        puts "direction is now #{@direction}"
      elsif rotate == "R" && @direction == "W"
        @direction = "N"
        puts "direction is now #{@direction}"
      else
        puts "command not found"
      end
    end
end

#user instructions
puts "provide starting x-coordinate"
x = gets.chomp.to_i
puts "provide starting y-coordiante"
y = gets.chomp.to_i
puts "provide starting direction (N,E,S,W)"
dir = gets.chomp

rover1 = Rover.new(x, y, dir)

rover1.location
