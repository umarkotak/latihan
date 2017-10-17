class Point
  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def quadran
    q = 1
    if @x >= 0 && @y >= 0
      q = 1
    elsif @x < 0 && @y >= 0
      q = 2
    elsif @x < 0 && @y < 0
      q = 3
    elsif @x >= 0 && @y < 0
      q = 4
    end
    q
  end

  def to_s
    "#{@x},#{@y}"
  end

  def print
    puts "#{@x},#{@y}"
  end

  def move_left(step)
      @x -= step
  end

  def move_right(step)
      @x += step
  end

  def move_up(step)
      @y += step
  end

  def move_down(step)
      @y -= step
  end

end

p = Point.new(3, -6)

puts p.quadran
puts p
puts p.move_left(4)
puts p.move_up(7)
puts p.quadran
puts p.print