class Die
  attr_accessor :side
  def initialize
    @side
  end
  def throw
    random == Random.rand(4)
      if rand(1)
        @side = :North

      elsif rand(2)
        @side = :East

      elsif rand(3)
        @side = :South

      else
      @side = :West
    end
  end
end


