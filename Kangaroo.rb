class Kangaroo #Represents the kangaroo in the simulation
  require_relative 'point'
  require_relative 'die'
  require_relative 'grid'

  attr_accessor  :current_point, :side # skippy's current point on the board and the side of the side made public

  def initialize grid
    @point = Point.new(0,0)  #Instance variable of skippy's location, which is initially (0,0)
    @die = Die.new           #new dice roll
    @grid = grid
  end

  def hop!
    temp_point = Point.new(@point.val1,@point.val2) 
    puts "Position before hop: #{@point.val1}, #{@point.val2}"
    direction = @die.throw
    temp_point.move! direction        #dice thrown and skippy moved to temp_point
    if @grid.lies_outside? temp_point #temporary point made to see if the new point would be out of bounds but skippy has yet to move
      puts"Oops, hit the boundary: #{temp_point.val1}, #{temp_point.val2}"
    else
      @point.move! direction          #if the temp_point isnt out of bounds skippy moves and new location printed
      puts "Position after hop: #{@point.val1}, #{@point.val2}"
    end
  end
  
  def at_home?(dimension)            #checks if skippy is at home 
    if @current_point.val1 == dimension-1 && @current_point.val2 == dimension-1
      true
    else
      false
    end
  end
end

temp = Kangaroo.new(Grid.new(10))

temp.hop!
