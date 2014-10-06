class Kangaroo
  require_relative 'point'
  require_relative 'die'
  attr_accessor  :current_point, :side
 
   def initialize
	@point = Point.new
   	@die = Die.new
    	@grid = grid
   end

def hop!
temp_point = Point.new
        @current_point.print
        temp_point.val1 = @current_point.val1
        temp_point.val2=@current_point.val2
        temp_point.move! @die.throw
        if @grid.lies_outside? temp_point
          puts"Oops, hit the boundary: #{temp_point.val1}, #{temp_point.val2}"
        else
          @current_point.move! @die.side
        end
     end
end

def at_home?(dimension)
      if @current_point.val1 == dimension && @current_point.val2 == dimension
             true
      else
             false
      end
  end
end