class Grid
  require_relative 'main'
  attr_accessor :dimensions
  def initialize(dimensions)
    @dimensions = dimensions
    @dimensions = 0
  end
  def dimension=(new_dim)
    @dimensions = new_dim
  end
  def get_point(val1, val2)
    grid[val2][val1]
  end

  def lies_outside?(point)
    if point.val1 > @dimensions || point.val2 > @dimensions ||point.val1<0 ||point.val2<0
      true
    else
      false
    end
  end

end
