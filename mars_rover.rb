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

  def turn(dir)
    #puts "current direction is #{@direction} use L or R to rotate the rover 90 degress Left or Right."
    #puts "please enter a direction"
    #rotate = gets.chomp

      if dir == "L" && @direction == "N"
        @direction = "W"
        puts "direction is now #{@direction}"
      elsif dir == "L" && @direction == "W"
        @direction = "S"
        puts "direction is now #{@direction}"
      elsif dir == "L" && @direction == "S"
        @direction = "E"
        puts "direction is now #{@direction}"
      elsif dir == "L" && @direction == "E"
        @direction = "N"
        puts "direction is now #{@direction}"

      elsif dir == "R" && @direction == "N"
        @direction = "E"
        puts "direction is now #{@direction}"
      elsif dir == "R" && @direction == "E"
        @direction = "S"
        puts "direction is now #{@direction}"
      elsif dir == "R" && @direction == "S"
        @direction = "W"
        puts "direction is now #{@direction}"
      elsif dir == "R" && @direction == "W"
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
heading = gets.chomp

rover1 = Rover.new(x, y, heading)

rover1.location

puts "use L, R, or M to move or turn the rover"
instructions = gets.chomp.split

instructions.each do |ins|
  if ins == "L"
    rover1.turn(ins)
  elsif ins == "R"
    rover1.turn(ins)
  elsif ins == "M"
    rover1.move
  else
    puts "command not found"
  end
end

rover1.location
