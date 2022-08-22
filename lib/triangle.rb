class Triangle
  # write code 
  attr_accessor :side1, :hypotenuse, :adjacent
  def initialize(side1, hypotenuse, adjacent)
    @side1 = side1
    @hypotenuse = hypotenuse
    @adjacent = adjacent
  end
  def kind 
    if self.adjacent <= 0 || self.side1 <= 0 || self.hypotenuse <= 0
      raise TriangleError
      elsif self.adjacent == self.hypotenuse && self.hypotenuse == self.side1
      :equilateral
    elsif self.adjacent == self.hypotenuse || self.hypotenuse == self.side1 || self.side1 == self.adjacent
      :isosceles
    elsif self.adjacent != self.hypotenuse && self.hypotenuse != self.side1 && self.side1 != self.adjacent
      :scalene
    end
  end

  class TriangleError < StandardError 
    def message
      "Not a valid triangle"

    end
  end 
  class TriangleError < StandardError
    def message
      "Triangle inequality failed"
    end
  end
  
end
