require 'pry'

class Robot

  FACING = ["NORTH", "EAST", "SOUTH", "WEST"]

  def initialize
  end

  def place x, y, f
    @facing = FACING.index f
    @vector = [x, y] if valid_move? x, y
  end

  def report
    puts "#{@vector}, #{FACING[@facing]}"
  end

  def right
    @facing + 1 == FACING.length ? @facing = 0 : @facing += 1
  end

  def left
    (@facing - 1).abs == FACING.length ? @facing = 0 : @facing -= 1
  end

  def move
    case FACING[@facing]
    when "NORTH"
      @vector[1] += 1 if valid_move?(@vector[0], @vector[1] + 1)
    when "EAST"
      @vector[0] += 1 if valid_move?(@vector[0] + 1, @vector[1])
    when "SOUTH"
      @vector[1] -= 1 if valid_move?(@vector[0], @vector[1] - 1)
    when "WEST"
      @vector[0] -= 1 if valid_move?(@vector[0] - 1, @vector[1])
    end
  end

  private
  def valid_move? x, y
    (x.between?(1, 5) && y.between?(1, 5)) || raise("Invalid coordinates: #{x}, #{y}")
  end
end

rbt = Robot.new
rbt.place(1, 5, "NORTH")
rbt.report
rbt.left
rbt.report
rbt.left
rbt.report
rbt.left
rbt.report
rbt.left
rbt.report

rbt.right
rbt.report
rbt.right
rbt.report
rbt.right
rbt.report
rbt.right
rbt.report
rbt.right
rbt.report
rbt.right
rbt.report

rbt.move
rbt.report
rbt.move
rbt.report
rbt.move
rbt.report
rbt.left
rbt.report
rbt.move
rbt.report
