class Point
	require_relative 'grid'
	require_relative 'die'
	require_relative 'kangaroo'
 	attr_accessor :val1, :val2, :East, :North, :South, :West
  	def initialize
 		@val1 = 0
    		@val2 = 0
	end

	def points_compare(val1, val2, val1.2, val2.2)
		true
  	else
		false

    	end
	
	def move!(direction)
  	case direction
  	when North

    @val2 += 1

    when East

    @val1 += 1

    when South

    @val2 -= 1

    when West

    @val1 -= 1

  else

    @val2 +=1
    end
  end

    def print

      puts "Hopped to: (#{@val1}, #{@val2})"
    end
end




 


end
