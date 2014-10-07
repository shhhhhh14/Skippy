class Main # main class in skippy project that runs program and tells user when finished
  require_relative 'point'
  require_relative 'die'
  require_relative 'kangaroo'
  require_relative 'grid'

  kangaroo = Kangaroo.new        #main instantiates both the Kangaroo and Grid classes
  print ('Enter dimension of the Grid between 1 and 9')
  grid = Grid.new
  grid = gets.chomp.to_i
  if grid <= 1
    print('Value must be grater than 1')
    get grid
  end
  moves=0
  kangaroo.hop!   #Starts and runs the simulation
  until kangaroo.at_home?(point, point.current_point)
    kangaroo.hop! die.throw, point, kangaroo, point.current_point)
    puts "Skippy is now at: (#{point.current_val1_point}, #{point.current_val2_point})"
    moves=+1
  end
  while !at_home?
    @grid.dimensions
    @location.print
    puts "Hopped home in #{moves} moves"   #Prints the final report
  end
end
