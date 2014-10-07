class Grid #Represents the grid that Skippy is hopping about on
  require_relative 'main' 
  attr_accessor :dimensions #uses the dimension obtained from user in the main class
  def initialize(dimensions)
    @dimensions = dimensions
  end
  def dimension=(new_dim)
    @dimensions = new_dim
  end
  def get_point(val1, val2)
    grid[val2][val1]
  end

  def lies_outside?(point) #checks to see if the current (val1, val2) ie Skippy is out of bounds 
    if point.val1 > @dimensions || point.val2 > @dimensions ||point.val1<0 ||point.val2<0
      true
    else
      false
    end
  end
end
