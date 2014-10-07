class Point #Represents a mutable point in the grid

  attr_accessor :val1, :val2, :x, :y, :East, :North, :South, :West
  def initialize(x,y)
    @val1 = x
    @val2 = y
  end

  def  points_equal?(val1, val2, x, y) # compares current point of skippy to his temporary point  
    if val1 == x && val2 == y
      true
    else
      false
    end
  end

  def move!(direction) #moves in the given direction
    case direction
      when :North #moves north
        @val2 += 1
      when :East #moves east
        @val1 += 1
      when :South  # moves south
        @val2 -= 1
      when :West  #moves west
        @val1 -= 1
      else
        @val2 +=1
    end
  end

 
end


