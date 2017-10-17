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

  def print
    "#{@x},#{@y}"
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
puts p.print
puts p.move_left(4)
puts p.move_up(7)
puts p.quadran
puts p.print


p1 = Point.new(3, 2)
p2 = Point.new(7, 8)


class Line
  attr_accessor :start
  attr_accessor :finish

  def initialize(start, finish)
    @start = start
    @finish = finish
  end

  def length
    long = Math.sqrt((@finish.x - @start.x) ** 2 + (@finish.y - @start.y) ** 2)
    long
  end

  def gradien
    grad = (@start.y - @finish.y) / (@start.x - @finish.x).to_f
    grad
  end
  def move_left(m)
    @start.x -= m
    @finish.x -= m
    self.print
  end

  def move_right(m)
    @start.x += m
    @finish.x += m
    self.print
  end

  def move_up(m)
    @start.y += m
    @finish.y += m
    self.print
  end

  def move_down(m)
    @start.y -= m
    @finish.y -= m
    self.print
  end

  def print
    "(#{@start.x}, #{@start.y}), (#{@finish.x}, #{@finish.y})"
  end

end

p1 = Point.new(0, 0)
p2 = Point.new(3, 4)

line = Line.new(p1, p2)
puts line.print
puts line.length
puts line.gradien
puts line.move_left(3)
puts line.length
puts line.gradien
puts line.move_right(2)
puts line.move_up(2)
puts line.move_down(2)