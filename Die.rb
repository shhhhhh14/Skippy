class Die #class contains 4 sided dice that rolls randomly
  attr_accessor :side
  def initialize
    @side
  end
  def throw
    random = rand(4) #1 of 4 options returned, equal probability
    if random==0
      :North

    elsif random==1
      :East

    elsif random==3
      :South

    else
      :West
    end
  end
end
